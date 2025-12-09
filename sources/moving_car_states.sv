`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: moving_car_states
// Description: This module manages the state, movement, collision detection, and
//              rendering of the player's car. It includes a state machine to handle
//              different car orientations (up, down, left, right, and diagonals),
//              logic for acceleration and collision with the track boundaries, and
//              an alpha-blending pipeline to draw the car sprite over the
//              background.
//////////////////////////////////////////////////////////////////////////////////

module moving_car_states#(
    // Sprite dimensions for different orientations
    parameter IMG_WIDTH_H   = 30,   // Width for horizontal car (up/down states)
    parameter IMG_HEIGHT_H  = 51,   // Height for horizontal car
    parameter IMG_WIDTH_V   = 51,   // Width for vertical car (left/right states)
    parameter IMG_HEIGHT_V  = 29,   // Height for vertical car
    parameter IMG_WIDTH_D   = 51,   // Width for diagonal car
    parameter IMG_HEIGHT_D  = 51,   // Height for diagonal car

    // Data widths
    parameter COLOR_WIDTH   = 16,   // Pixel color data width: ARGB4444 (16 bits)
    parameter ADDR_WIDTH    = 12    // BRAM address width for sprite data
    
)(
    // System and VGA Inputs
    input  logic         clk,                   // System clock
    input  logic         rst,                   // System reset
    input  logic [10:0]  curr_x,                // Current VGA horizontal pixel coordinate
    input  logic [9:0]   curr_y,                // Current VGA vertical pixel coordinate
    input  logic [COLOR_WIDTH-1:0] bg_color,    // Background pixel color from previous pipeline stage

    // Control and Game State Inputs
    input  logic         in_up, in_down, in_left, in_right, // Player movement controls
    input  logic [6:0]   tilemap [0:24][0:39],  // Game world tilemap for collision detection
    input  logic         swtch,                 // Signal that triggers a car position reset (e.g., track change)
    input  logic         clr_swtch,             // Switch to swap car's red and green color channels
    input  logic         accel_flag,            // Flag to indicate acceleration is active

    // Outputs
    output logic [3:0]   o_pix_r,               // Final blended red pixel component
    output logic [3:0]   o_pix_g,               // Final blended green pixel component
    output logic [3:0]   o_pix_b,               // Final blended blue pixel component
    output logic [9:0]   y_pos = 207,           // Car's current vertical position (top-left)
    output logic [10:0]  x_pos = 602            // Car's current horizontal position (top-left)
);
 
    typedef enum logic [2:0] { 
        up_st,
        down_st,
        left_st,
        right_st,
        diagonal_ru_s,
        diagonal_lu_s,
        diagonal_rd_s,
        diagonal_ld_s
    } state_car;
    
    //==============================================================================
    // Internal Signals
    //==============================================================================
    
    logic [10:0] next_x;
    logic [9:0]  next_y;
    logic [5:0] IMG_WIDTH, IMG_HEIGHT;

    logic [19:0] div_counter; 
    localparam max_x = 1279, max_y = 799;
    localparam step = 1;    
    localparam slow_countervalue = 20'd524287; // 2**19 - 1
    localparam fast_countervalue = 20'd262143; // 2**18 - 1
    logic [19:0] speed_counter;
    logic walkable1, walkable2, walkable3, walkable4, walkable5, walkable6, walkable7, walkable8, walkable;
    logic walkable_next1, walkable_next2, walkable_next3, walkable_next4, walkable_next5, walkable_next6, walkable_next7, walkable_next8;
    
    //==============================================================================
    // Collision and Rotation Detection
    //==============================================================================

    // --- Points for Collision Bounding Box ---
    // These points probe the tilemap to check if the car's path is clear.
    logic [10:0] x_p1, x_p2, x_p3, x_p4;
    logic [9:0]  y_p1, y_p2, y_p3, y_p4;
    collision_mask u_collision_mask1 (.curr_x(x_p1), .curr_y(y_p1), .tilemap(tilemap), .walkable(walkable_next1));
    collision_mask u_collision_mask2 (.curr_x(x_p2), .curr_y(y_p2), .tilemap(tilemap), .walkable(walkable_next2));
    collision_mask u_collision_mask3 (.curr_x(x_p3), .curr_y(y_p3), .tilemap(tilemap), .walkable(walkable_next3));
    collision_mask u_collision_mask4 (.curr_x(x_p4), .curr_y(y_p4), .tilemap(tilemap), .walkable(walkable_next4));
    
    // --- Rotation Probes ---
    // These check if the area the car would occupy *after* rotation is clear,
    // preventing rotation into walls.

    // Check if rotatable to horizontal (up, down states)
    logic rot1_h, rot2_h, rot3_h, rot4_h;
    collision_mask c1_h (.curr_x(x_pos - 26), .curr_y(y_pos - 15), .tilemap(tilemap), .walkable(rot1_h));
    collision_mask c2_h (.curr_x(x_pos - 26), .curr_y(y_pos + 15), .tilemap(tilemap), .walkable(rot2_h));
    collision_mask c3_h (.curr_x(x_pos + 26), .curr_y(y_pos - 15), .tilemap(tilemap), .walkable(rot3_h));
    collision_mask c4_h (.curr_x(x_pos + 26), .curr_y(y_pos + 15), .tilemap(tilemap), .walkable(rot4_h));
    assign rotatable_h = rot1_h & rot2_h & rot3_h & rot4_h;

    // Check if rotatable to vertical (left, right states)
    logic rot1_v, rot2_v, rot3_v, rot4_v;
    collision_mask c1_v (.curr_x(x_pos - 15), .curr_y(y_pos - 26), .tilemap(tilemap), .walkable(rot1_v));
    collision_mask c2_v (.curr_x(x_pos - 15), .curr_y(y_pos + 26), .tilemap(tilemap), .walkable(rot2_v));
    collision_mask c3_v (.curr_x(x_pos + 15), .curr_y(y_pos - 26), .tilemap(tilemap), .walkable(rot3_v));
    collision_mask c4_v (.curr_x(x_pos + 15), .curr_y(y_pos + 26), .tilemap(tilemap), .walkable(rot4_v));
    assign rotatable_v = rot1_v & rot2_v & rot3_v & rot4_v;

    // Check if rotatable to diagonal up-right / down-left
    logic rot1_d1, rot2_d1, rot3_d1, rot4_d1;
    collision_mask c1_d1 (.curr_x(x_pos - 26), .curr_y(y_pos - 9), .tilemap(tilemap), .walkable(rot1_d1));
    collision_mask c2_d1 (.curr_x(x_pos + 26), .curr_y(y_pos + 9), .tilemap(tilemap), .walkable(rot2_d1));
    collision_mask c3_d1 (.curr_x(x_pos + 9), .curr_y(y_pos + 26), .tilemap(tilemap), .walkable(rot3_d1));
    collision_mask c4_d1 (.curr_x(x_pos - 9), .curr_y(y_pos - 26), .tilemap(tilemap), .walkable(rot4_d1));
    assign rotatable_d1 = rot1_d1 & rot2_d1 & rot3_d1 & rot4_d1;

    // Check if rotatable to diagonal up-left / down-right
    logic rot1_d2, rot2_d2, rot3_d2, rot4_d2;
    collision_mask c1_d2 (.curr_x(x_pos + 26), .curr_y(y_pos - 9), .tilemap(tilemap), .walkable(rot1_d2));
    collision_mask c2_d2 (.curr_x(x_pos - 26), .curr_y(y_pos + 9), .tilemap(tilemap), .walkable(rot2_d2));
    collision_mask c3_d2 (.curr_x(x_pos - 9), .curr_y(y_pos + 26), .tilemap(tilemap), .walkable(rot3_d2));
    collision_mask c4_d2 (.curr_x(x_pos + 9), .curr_y(y_pos - 26), .tilemap(tilemap), .walkable(rot4_d2));
    assign rotatable_d2 = rot1_d2 & rot2_d2 & rot3_d2 & rot4_d2;

    //==============================================================================
    // Car State Machine
    //==============================================================================
    state_car curr_state, next_state;

    always_ff @(posedge clk) begin
        walkable1 <= walkable_next1;
        walkable2 <= walkable_next2;
        walkable3 <= walkable_next3;
        walkable4 <= walkable_next4;
        walkable5 <= walkable_next5;
        walkable6 <= walkable_next6;
        walkable7 <= walkable_next7;
        walkable8 <= walkable_next8;
        
        if (~rst)
        begin
            curr_state <= right_st;
        end
        else 
        begin
            curr_state <= next_state;
        end
    end
    
    assign walkable = walkable1 & walkable2 & walkable3 & walkable4;
    
    // Combinational logic to determine the next state and set parameters based on the current state.
    always_comb begin
        next_state = curr_state;
        IMG_WIDTH = IMG_WIDTH_H;
        IMG_HEIGHT = IMG_HEIGHT_H;
        bram_data = bram_data_u;
        x_p1 = next_x - 24; y_p1 = next_y - 13;
        x_p2 = next_x + 24; y_p2 = next_y - 13;
        x_p3 = next_x - 24; y_p3 = next_y + 13;
        x_p4 = next_x + 24; y_p4 = next_y + 13;
        case(curr_state)
            right_st:begin
                IMG_HEIGHT = IMG_HEIGHT_H;
                IMG_WIDTH = IMG_WIDTH_H;
                bram_data = bram_data_u;
                x_p1 = next_x - 24; y_p1 = next_y - 13;
                x_p2 = next_x + 24; y_p2 = next_y - 13;
                x_p3 = next_x - 24; y_p3 = next_y + 13;
                x_p4 = next_x + 24; y_p4 = next_y + 13;
                if(in_down&~in_up&~in_left&~in_right && rotatable_v && ~stuck)begin
                    next_state = down_st;
                end
                else if(in_up&~in_down&~in_left&~in_right && rotatable_v && ~stuck)begin
                    next_state = up_st;
                end
                else if(~in_up&in_down&~in_left&in_right && rotatable_d1 && ~stuck)begin
                    next_state = diagonal_rd_s;
                end
                else if(in_up&~in_down&~in_left&in_right && rotatable_d2 && ~stuck)begin
                    next_state = diagonal_ru_s;
                end

            end
            left_st:begin
                IMG_HEIGHT = IMG_HEIGHT_H;
                IMG_WIDTH = IMG_WIDTH_H;
                bram_data = bram_data_d;
                x_p1 = next_x - 24; y_p1 = next_y - 13;
                x_p2 = next_x + 24; y_p2 = next_y - 13;
                x_p3 = next_x - 24; y_p3 = next_y + 13;
                x_p4 = next_x + 24; y_p4 = next_y + 13;
               
                if(in_down&~in_up&~in_left&~in_right && rotatable_v && ~stuck)begin
                    next_state = down_st;
                end
                else if(in_up&~in_down&~in_left&~in_right && rotatable_v && ~stuck)begin
                    next_state = up_st;
                end
                else if(~in_up&in_down&in_left&~in_right && rotatable_d2 && ~stuck)begin
                    next_state = diagonal_ld_s;
                end
                else if(in_up&~in_down&in_left&~in_right && rotatable_d1 && ~stuck)begin
                    next_state = diagonal_lu_s;
                end
            end
            up_st:begin
                IMG_HEIGHT = IMG_HEIGHT_V;
                IMG_WIDTH = IMG_WIDTH_V;
                bram_data = bram_data_l;
                x_p1 = next_x - 13; y_p1 = next_y - 24;
                x_p2 = next_x - 13; y_p2 = next_y + 22;
                x_p3 = next_x + 13; y_p3 = next_y - 24;
                x_p4 = next_x + 13; y_p4 = next_y + 22;

                if(in_right&~in_left&~in_up&~in_down && rotatable_h && ~stuck)begin
                    next_state = right_st;
                end
                else if(in_left&~in_right&~in_up&~in_down && rotatable_h && ~stuck)begin
                    next_state = left_st;
                end
                else if(~in_left&in_right&in_up&~in_down && rotatable_d2 && ~stuck)begin
                    next_state = diagonal_ru_s;
                end
                else if(in_left&~in_right&in_up&~in_down && rotatable_d1 && ~stuck)begin
                    next_state = diagonal_lu_s;
                end
            end
            down_st:begin
                IMG_HEIGHT = IMG_HEIGHT_V;
                IMG_WIDTH = IMG_WIDTH_V;
                bram_data = bram_data_r;
                x_p1 = next_x - 13; y_p1 = next_y - 24;
                x_p2 = next_x - 13; y_p2 = next_y + 22;
                x_p3 = next_x + 13; y_p3 = next_y - 24;
                x_p4 = next_x + 13; y_p4 = next_y + 22;
                if(in_right&~in_left&~in_up&~in_down && rotatable_h && ~stuck)begin
                    next_state = right_st;
                end
                else if(in_left&~in_right&~in_up&~in_down && rotatable_h && ~stuck)begin
                    next_state = left_st;
                end
                else if(~in_left&in_right&~in_up&in_down && rotatable_d1 && ~stuck)begin
                    next_state = diagonal_rd_s;
                end
                else if(in_left&~in_right&~in_up&in_down && rotatable_d2 && ~stuck)begin
                    next_state = diagonal_ld_s;
                end
            end

            diagonal_lu_s:begin
                IMG_HEIGHT = IMG_HEIGHT_D;
                IMG_WIDTH = IMG_WIDTH_D;
                bram_data = bram_data_ld;
                x_p1 = next_x - 24; y_p1 = next_y - 9;
                x_p2 = next_x + 24; y_p2 = next_y + 9;
                x_p1 = next_x - 9; y_p1 = next_y - 24;
                x_p2 = next_x + 9; y_p2 = next_y + 22;
                if(~in_right&in_left&~in_up&~in_down && rotatable_h)begin
                    next_state = left_st;
                end
                else if(~in_left&~in_right&in_up&~in_down && rotatable_v)begin
                    next_state = up_st;
                end
                end
            diagonal_ru_s:begin
                IMG_HEIGHT = IMG_HEIGHT_D;
                IMG_WIDTH = IMG_WIDTH_D;
                bram_data = bram_data_lu;
                x_p1 = next_x - 24; y_p1 = next_y + 9;
                x_p2 = next_x + 24; y_p2 = next_y - 9;
                x_p1 = next_x - 9; y_p1 = next_y + 22;
                x_p2 = next_x + 9; y_p2 = next_y - 24;
                if (in_right&~in_left&~in_up&~in_down && rotatable_h )
                    next_state = right_st;
                else if (~in_left&~in_right&in_up&~in_down && rotatable_v )
                    next_state = up_st;
                end
            diagonal_ld_s:begin
                IMG_HEIGHT = IMG_HEIGHT_D;
                IMG_WIDTH = IMG_WIDTH_D;
                bram_data = bram_data_rd;
                x_p1 = next_x - 24; y_p1 = next_y + 9;
                x_p2 = next_x + 24; y_p2 = next_y - 9;
                x_p1 = next_x - 9; y_p1 = next_y + 22;
                x_p2 = next_x + 9; y_p2 = next_y - 24;
                if (~in_right&~in_left&~in_up&in_down && rotatable_v)
                    next_state = down_st;
                else if (in_left&~in_right&~in_up&~in_down && rotatable_h)
                    next_state = left_st;
                end
            diagonal_rd_s:begin
                IMG_HEIGHT = IMG_HEIGHT_D;
                IMG_WIDTH = IMG_WIDTH_D;
                bram_data = bram_data_ru;
                x_p1 = next_x - 24; y_p1 = next_y - 9;
                x_p2 = next_x + 24; y_p2 = next_y + 9;
                x_p1 = next_x + 9; y_p1 = next_y + 22;
                x_p2 = next_x - 9; y_p2 = next_y - 24;
                if (in_right&~in_left&~in_up&~in_down && rotatable_h)
                    next_state = right_st;
                else if (~in_left&~in_right&~in_up&in_down && rotatable_v)
                    next_state = down_st;
                end
            default:begin
                bram_data = bram_data_u;
                IMG_HEIGHT = IMG_HEIGHT_H;
                IMG_WIDTH = IMG_WIDTH_H;
                next_state = right_st;
                x_p1 = next_x - 24; y_p1 = next_y - 13;
                x_p2 = next_x + 24; y_p2 = next_y - 13;
                x_p3 = next_x - 24; y_p3 = next_y + 13;
                x_p4 = next_x + 24; y_p4 = next_y + 13;
            end

        endcase
        
    end

    //==============================================================================
    // Movement and Position Logic
    //==============================================================================

    // Compute next potential coordinates based on input (combinational)
    always_comb begin
        next_x = x_pos;
        next_y = y_pos;

        if (in_up&~in_down&~in_left&~in_right)
            next_y = y_pos - step;
        else if (~in_up&in_down&~in_left&~in_right)
            next_y = y_pos + step;
        else if (~in_up&~in_down&in_left&~in_right)
            next_x = x_pos - step;
        else if (~in_up&~in_down&~in_left&in_right)
            next_x = x_pos + step;
        else if (in_up&~in_down&in_left&~in_right) begin
            next_y = y_pos - step;
            next_x = x_pos - step;
        end
        else if (in_up&~in_down&~in_left&in_right) begin
            next_y = y_pos - step;
            next_x = x_pos + step;
        end
        else if (~in_up&in_down&in_left&~in_right) begin
            next_y = y_pos + step;
            next_x = x_pos - step;
        end
        else if (~in_up&in_down&~in_left&in_right) begin
            next_y = y_pos + step;
            next_x = x_pos + step;
        end
            
    end
    
    // Synchronize and edge-detect the external 'swtch' signal to reset car position.
    logic sw_sync0, sw_sync1, sw_prev;
    logic sw_change_pulse; // 1-cycle pulse when swtch changes (rising OR falling)
    
    always_ff @(posedge clk or negedge rst) begin
        if (~rst) begin
            sw_sync0 <= 1'b0;
            sw_sync1 <= 1'b0;
            sw_prev  <= 1'b0;
            sw_change_pulse <= 1'b0;
        end else begin
            // 2-stage synchronizer
            sw_sync0 <= swtch;
            sw_sync1 <= sw_sync0;
    
            // one-cycle pulse on any edge
            sw_change_pulse <= (sw_sync1 ^ sw_prev);
    
            // store previous synchronized state for next edge detection
            sw_prev <= sw_sync1;
        end
    end

    // --- Speed, Movement, and Collision State ---
    logic stuck;
    logic [9:0] stuck_counter;
    logic is_moving, blink;
    logic up_trigger, down_trigger, left_trigger, right_trigger;
    assign is_moving = in_up || in_down || in_left || in_right;
    assign blink = stuck_counter[3];

    // This block updates the car's position at a variable rate determined by the speed counter.
    // It handles acceleration, deceleration, and collision response (the 'stuck' state).
    localparam incrementer = 2**14;
    always_ff @(posedge clk ) begin
        if (~rst || sw_change_pulse)
        begin
            div_counter <= 0;
            x_pos <= 602;
            y_pos <= 207;
            speed_counter <= slow_countervalue;
            stuck <= 0;
            stuck_counter <= 0;
        end
        else
        begin
            if(div_counter >= speed_counter)//game logic tick
            begin
                // When accel_flag is high, decrease counter for more speed.
                // When accel_flag is low, increase counter for less speed.
                if(speed_counter < slow_countervalue )
                begin
                    if (in_up)
                        up_trigger <= 1;
                    else if(in_down)
                        down_trigger <= 1;
                    else if(in_left)
                        left_trigger <= 1;
                    else if(in_right)
                        right_trigger <= 1;
                end
                else
                begin
                    up_trigger <= 0;
                    down_trigger <= 0;
                    left_trigger <= 0;
                    right_trigger <= 0;
                end

                
                speed_counter <= (accel_flag != 0 && is_moving) ? (speed_counter > fast_countervalue ? speed_counter - incrementer : fast_countervalue) : (speed_counter < slow_countervalue ? speed_counter + incrementer : slow_countervalue);
                div_counter <= 0;

                if (stuck) begin
                    speed_counter <= slow_countervalue;
                    if (stuck_counter > 0)
                        stuck_counter <= stuck_counter - 1;
                    else
                        stuck <= 0;
                end else begin
                    
                    if (is_moving && ~walkable && stuck == 0) begin
                        stuck <= 1;
                        stuck_counter <= 200;
                    end else begin
                        //move up
                        if((up_trigger||in_up) && walkable && signed'(y_pos - step) > 0)
                            y_pos <= y_pos - step;
                        //move down
                        if((down_trigger || in_down) && walkable && (y_pos + step) < max_y)
                            y_pos <= y_pos + step;
                        //move left
                        if((left_trigger || in_left) && walkable && signed'(x_pos - step) > 0)
                            x_pos <= x_pos - step;
                        //move right
                        if((right_trigger || in_right) && walkable && (x_pos + step) < max_x)
                            x_pos <= x_pos + step;
                    end
                end
            end
            else
                div_counter<=div_counter+1;
        end
    end
    
    //==============================================================================
    // Sprite Rendering Pipeline
    //==============================================================================

    // --- Relative Coordinates and BRAM Address Generation ---
    logic [10:0] x_rel;
    logic [9:0]  y_rel;
    logic read_mem_en;
    
    // Check if the current pixel scan is inside the car's bounding box
    assign read_mem_en = (curr_x + {IMG_HEIGHT[5:1]} >= x_pos) && (curr_y + {IMG_WIDTH[5:1]} >= y_pos) &&
                         (curr_x < x_pos + {IMG_HEIGHT[5:1]}) && (curr_y < y_pos + {IMG_WIDTH[5:1]});

    assign x_rel = curr_x - x_pos + (IMG_HEIGHT >> 1);
    assign y_rel = curr_y - y_pos + (IMG_WIDTH >> 1);

    logic [ADDR_WIDTH-1:0] addr_comb_90; // Logic name reverted
    logic [ADDR_WIDTH-1:0] addr_reg;
    
    // Shift Register (SR) for Enable signal delay
    logic [4:0] read_mem_en_sr; 
    
    always_comb begin
        if (read_mem_en)
            // 90-degree rotation of sprite coordinates to match BRAM storage
            addr_comb_90 = ((IMG_HEIGHT - 1) - x_rel) * IMG_WIDTH + y_rel;
        else
            addr_comb_90 = '0;
    end

    always_ff @(posedge clk) begin
        if (~rst) begin
            addr_reg <= 1'b0;
            read_mem_en_sr <= '0;
        end else begin
            addr_reg <= addr_comb_90;
            // Shift Register: Shift left and insert new value at LSB
            read_mem_en_sr <= {read_mem_en_sr[3:0], read_mem_en};
        end
    end

    // --- BRAM Interface for Car Sprites ---
    logic [COLOR_WIDTH-1:0] bram_data;
    logic [COLOR_WIDTH-1:0] bram_data_u, bram_data_d, bram_data_r, bram_data_l, bram_data_ru, bram_data_rd, bram_data_lu, bram_data_ld;
    
    car_green_u car_u (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data_u)
    );
    car_green_d car_d (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data_d)
    );
    car_green_r car_r (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data_r)
    );
    car_green_l car_l (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data_l)
    );

    car_green_45_ru car_ru (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data_ru)
    );
    car_green_45_rd car_rd (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data_rd)
    );
    car_green_45_lu car_lu (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data_lu)
    );
    car_green_45_ld car_ld (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data_ld)
    );

    // --- Output Pipeline with Alpha Blending ---
    
    logic [3:0] fg_a, fg_r, fg_g, fg_b; // Foreground (Sprite) channels
    logic [3:0] bg_r, bg_g, bg_b;       // Background
    
    assign {fg_a, fg_r, fg_g, fg_b} = bram_data; 
    
    // Extract RGB from background (Assuming BG input is lower 12 bits)
    assign {bg_r, bg_g, bg_b}       = bg_color[11:0];

    // Calculate Effective Alpha, considering the draw enable signal and blink state.
    logic [3:0] alpha_eff;
    
    // The enable signal is delayed by 2 cycles to match the BRAM's read latency.
    assign alpha_eff = (read_mem_en_sr[2] && ~blink) ? fg_a : 4'd0;
    
    // Calculate Inverse Alpha for the background component.
    logic [3:0] inv_alpha;
    assign inv_alpha = 4'd15 - alpha_eff;

    // Blending Calculation (Combinational)
    // Formula: (FG * Alpha) + (BG * (15-Alpha))
    logic [8:0] r_mixed, g_mixed, b_mixed;
    
    // The clr_swtch swaps the red and green channels of the car sprite.
    always_comb begin
    if (!clr_swtch) begin
        r_mixed = (fg_r * alpha_eff) + (bg_r * inv_alpha);
        g_mixed = (fg_g * alpha_eff) + (bg_g * inv_alpha);
        b_mixed = (fg_b * alpha_eff) + (bg_b * inv_alpha);
    end 
    else begin
        r_mixed = (fg_g * alpha_eff) + (bg_r * inv_alpha);
        g_mixed = (fg_r * alpha_eff) + (bg_g * inv_alpha);
        b_mixed = (fg_b * alpha_eff) + (bg_b * inv_alpha);
    end
    end

    // Output Register: Final stage of the pipeline.
    // The blended result is divided by 15 (by taking the upper bits) to normalize it back to a 4-bit value.
    always_ff @(posedge clk) begin
        if (~rst) begin
            o_pix_r <= 0;
            o_pix_g <= 0;
            o_pix_b <= 0;
        end else begin
            o_pix_r <= r_mixed[7:4]; 
            o_pix_g <= g_mixed[7:4];
            o_pix_b <= b_mixed[7:4];
        end
    end

endmodule