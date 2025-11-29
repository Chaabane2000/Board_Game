`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: moving_car_states
// Description: Car sprite renderer with proper Alpha Blending (ARGB4444)
//              State transitions are now calculated from the Sprite Center.
//////////////////////////////////////////////////////////////////////////////////

module moving_car_states#(
    parameter IMG_WIDTH_H   = 30,
    parameter IMG_HEIGHT_H  = 51,
    parameter IMG_WIDTH_V   = 51,
    parameter IMG_HEIGHT_V  = 29,
    parameter IMG_WIDTH_D   = 51,
    parameter IMG_HEIGHT_D  = 51,
    parameter COLOR_WIDTH   = 16,   // ARGB4444 (16 bits total)
    parameter ADDR_WIDTH    = 12
    
)(
    input  logic         clk,
    input  logic         rst,
    input  logic [10:0]  curr_x,
    input  logic [9:0]   curr_y,
    input  logic [COLOR_WIDTH-1:0] bg_color, // Background input
    input logic in_up, in_down, in_left, in_right,
    input logic [6:0] tilemap [0:24][0:39],
    input logic swtch,
    input logic accel_flag,

    output logic [3:0]   o_pix_r,
    output logic [3:0]   o_pix_g,
    output logic [3:0]   o_pix_b,
    output logic [9:0]   y_pos = 192,
    output logic [10:0]  x_pos = 576
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
    
    
    logic [10:0] next_x;
    logic [9:0]  next_y;
    logic [5:0] IMG_WIDTH, IMG_HEIGHT;

    logic [19:0] div_counter; 
    localparam max_x = 1279, max_y = 799;
    localparam step = 1;    
    localparam slow_countervalue = 20'd524287; // 2**19 - 1
    localparam fast_countervalue = 20'd262143; // 2**18 - 1
    logic [19:0] speed_counter;
    logic walkable1, walkable2, walkable3, walkable4;
    logic walkable_next1, walkable_next2, walkable_next3, walkable_next4;

    // --- Bounding Box Collision Masks (For Movement Limits) ---
    // These still check corners to prevent the car from phasing into walls
    collision_mask u_collision_mask1 (.curr_x(next_x), .curr_y(next_y), .tilemap(tilemap), .walkable(walkable_next1));
    collision_mask u_collision_mask2 (.curr_x(next_x + IMG_WIDTH), .curr_y(next_y), .tilemap(tilemap), .walkable(walkable_next2));
    collision_mask u_collision_mask3 (.curr_x(next_x), .curr_y(next_y + IMG_HEIGHT), .tilemap(tilemap), .walkable(walkable_next3));
    collision_mask u_collision_mask4 (.curr_x(next_x + IMG_WIDTH), .curr_y(next_y + IMG_HEIGHT), .tilemap(tilemap), .walkable(walkable_next4));
    
    // --- Center Calculation for Rotation ---
    logic [10:0] center_x;
    logic [9:0]  center_y;
    // Calculate Center: TopLeft + (Dimension / 2)
    assign center_x = x_pos + {5'd0, IMG_WIDTH[5:1]}; 
    assign center_y = y_pos + {4'd0, IMG_HEIGHT[5:1]};

    logic rot_h, rot_v, rot_d;

    // --- Rotation Probes ---
    // These now check the CENTER of the sprite to determine if a state change (turn) is valid.
    collision_mask u1(.curr_x(center_x), .curr_y(center_y), .tilemap(tilemap), .walkable(rot_h));
    collision_mask u2(.curr_x(center_x), .curr_y(center_y), .tilemap(tilemap), .walkable(rot_v));
    collision_mask u3(.curr_x(center_x), .curr_y(center_y), .tilemap(tilemap), .walkable(rot_d));

    state_car curr_state, next_state;

    always_ff @(posedge clk) begin
        walkable1 <= walkable_next1;
        walkable2 <= walkable_next2;
        walkable3 <= walkable_next3;
        walkable4 <= walkable_next4;
        
        if (~rst)
        begin
            curr_state <= up_st;
        end
        else 
        begin
            curr_state <= next_state;
        end
    end


    always_comb begin
        next_state = curr_state;
        IMG_WIDTH = IMG_WIDTH_H;
        IMG_HEIGHT = IMG_HEIGHT_H;
        bram_data = bram_data_u;
       
        case(curr_state)
            up_st:begin
                IMG_HEIGHT = IMG_HEIGHT_H;
                IMG_WIDTH = IMG_WIDTH_H;
                bram_data = bram_data_u;
                if(in_down&~in_up&~in_left&~in_right && rot_v && ~stuck)begin
                    next_state = right_st;
                end
                else if(in_up&~in_down&~in_left&~in_right && rot_v && ~stuck)begin
                    next_state = left_st;
                end
                else if(~in_up&in_down&~in_left&in_right && rot_d && ~stuck)begin
                    next_state = diagonal_ru_s;
                end
                else if(in_up&~in_down&~in_left&in_right && rot_d && ~stuck)begin
                    next_state = diagonal_lu_s;
                end

            end
            down_st:begin
                IMG_HEIGHT = IMG_HEIGHT_H;
                IMG_WIDTH = IMG_WIDTH_H;
                bram_data = bram_data_d;
                if(in_down&~in_up&~in_left&~in_right && rot_v && ~stuck)begin
                    next_state = right_st;
                end
                else if(in_up&~in_down&~in_left&~in_right && rot_v && ~stuck)begin
                    next_state = left_st;
                end
                else if(~in_up&in_down&in_left&~in_right && rot_d && ~stuck)begin
                    next_state = diagonal_rd_s;
                end
                else if(in_up&~in_down&in_left&~in_right && rot_d && ~stuck)begin
                    next_state = diagonal_ld_s;
                end
            end
            left_st:begin
                IMG_HEIGHT = IMG_HEIGHT_V;
                IMG_WIDTH = IMG_WIDTH_V;
                bram_data = bram_data_l;
                if(in_right&~in_left&~in_up&~in_down && rot_h && ~stuck)begin
                    next_state = up_st;
                end
                else if(in_left&~in_right&~in_up&~in_down && rot_h && ~stuck)begin
                    next_state = down_st;
                end
                else if(~in_left&in_right&in_up&~in_down && rot_d && ~stuck)begin
                    next_state = diagonal_lu_s;
                end
                else if(in_left&~in_right&in_up&~in_down && rot_d && ~stuck)begin
                    next_state = diagonal_ld_s;
                end
            end
            right_st:begin
                IMG_HEIGHT = IMG_HEIGHT_V;
                IMG_WIDTH = IMG_WIDTH_V;
                bram_data = bram_data_r;
                if(in_right&~in_left&~in_up&~in_down && rot_h)begin
                    next_state = up_st;
                end
                else if(in_left&~in_right&~in_up&~in_down && rot_h)begin
                    next_state = down_st;
                end
                else if(~in_left&in_right&~in_up&in_down && rot_d)begin
                    next_state = diagonal_ru_s;
                end
                else if(in_left&~in_right&~in_up&in_down && rot_d)begin
                    next_state = diagonal_rd_s;
                end
            end

            diagonal_ld_s:begin
                IMG_HEIGHT = IMG_HEIGHT_D;
                IMG_WIDTH = IMG_WIDTH_D;
                bram_data = bram_data_ld;
                if(~in_right&in_left&~in_up&~in_down && rot_h)begin
                    next_state = down_st;
                end
                else if(~in_left&~in_right&in_up&~in_down && rot_v)begin
                    next_state = left_st;
                end
                end
            diagonal_lu_s:begin
                IMG_HEIGHT = IMG_HEIGHT_D;
                IMG_WIDTH = IMG_WIDTH_D;
                bram_data = bram_data_lu;
                if (in_right&~in_left&~in_up&~in_down && rot_h)
                    next_state = up_st;
                else if (~in_left&~in_right&in_up&~in_down && rot_v)
                    next_state = left_st;
                end
            diagonal_rd_s:begin
                IMG_HEIGHT = IMG_HEIGHT_D;
                IMG_WIDTH = IMG_WIDTH_D;
                bram_data = bram_data_rd;
                if (~in_right&~in_left&~in_up&in_down && rot_v)
                    next_state = right_st;
                else if (in_left&~in_right&~in_up&~in_down && rot_h)
                    next_state = down_st;
                end
            diagonal_ru_s:begin
                IMG_HEIGHT = IMG_HEIGHT_D;
                IMG_WIDTH = IMG_WIDTH_D;
                bram_data = bram_data_ru;
                if (in_right&~in_left&~in_up&~in_down && rot_h)
                    next_state = up_st;
                else if (~in_left&~in_right&~in_up&in_down && rot_v)
                    next_state = right_st;
                end
            default:begin
                bram_data = bram_data_u;
                IMG_HEIGHT = IMG_HEIGHT_H;
                IMG_WIDTH = IMG_WIDTH_H;
                next_state = up_st;
            end

        endcase
        
    end
    // Compute next coordinates (combinational)
    always_comb begin
        next_x = x_pos;
        next_y = y_pos;

        if (in_up&~in_down&~in_left&~in_right)
            next_y = y_pos - step;
        else if (~in_up&in_down&~in_left&~in_right)
            next_y = y_pos + IMG_WIDTH + step;
        else if (~in_up&~in_down&in_left&~in_right)
            next_x = x_pos - step;
        else if (~in_up&~in_down&~in_left&in_right)
            next_x = x_pos + IMG_HEIGHT + step;
        else if (in_up&~in_down&in_left&~in_right) begin
            next_y = y_pos - step;
            next_x = x_pos - step;
        end
        else if (in_up&~in_down&~in_left&in_right) begin
            next_y = y_pos - step;
            next_x = x_pos + IMG_HEIGHT + step;
        end
        else if (~in_up&in_down&in_left&~in_right) begin
            next_y = y_pos + IMG_WIDTH + step;
            next_x = x_pos - step;
        end
        else if (~in_up&in_down&~in_left&in_right) begin
            next_y = y_pos + IMG_WIDTH + step;
            next_x = x_pos + IMG_HEIGHT + step;
        end
            
    end
    
    // ---- sync + edge detect for external switch 'swtch' ----
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

    logic stuck;
    logic [9:0] stuck_counter;
    logic is_moving, blink;
    logic up_trigger, down_trigger, left_trigger, right_trigger;
    assign is_moving = in_up || in_down || in_left || in_right;
    assign blink = stuck_counter[3];
    localparam incrementer = 2**14;
    always_ff @(posedge clk ) begin
        if (~rst || sw_change_pulse)
        begin
            div_counter <= 0;
            x_pos <= 576;
            y_pos <= 192;
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
                    
                    if (is_moving && ~walkable1 && stuck == 0) begin
                        stuck <= 1;
                        stuck_counter <= 500;
                    end else begin
                        //move up
                        if((up_trigger||in_up) && walkable1 && signed'(y_pos - step) > 0)
                            y_pos <= y_pos - step;
                        //move down
                        if((down_trigger || in_down) && walkable1 && (y_pos + step) < max_y)
                            y_pos <= y_pos + step;
                        //move left
                        if((left_trigger || in_left) && walkable1 && signed'(x_pos - step) > 0)
                            x_pos <= x_pos - step;
                        //move right
                        if((right_trigger || in_right) && walkable1 && (x_pos + step) < max_x)
                            x_pos <= x_pos + step;
                    end
                end
            end
            else
                div_counter<=div_counter+1;
        end
    end

    // --- Relative coordinates ---
    logic [10:0] x_rel;
    logic [9:0]  y_rel;
    logic read_mem_en;
    
    // Check if the current pixel scan is inside the car's bounding box
    assign read_mem_en = (curr_x >= x_pos) && (curr_y >= y_pos) &&
                         (curr_x < x_pos + IMG_HEIGHT) && (curr_y < y_pos + IMG_WIDTH);

    assign x_rel = curr_x - x_pos;
    assign y_rel = curr_y - y_pos;

    // --- Address pipeline ---
    logic [ADDR_WIDTH-1:0] addr_comb_90;
    logic [ADDR_WIDTH-1:0] addr_reg;
    logic read_mem_en_reg;
    
    
    always_comb begin
        if (read_mem_en)
            addr_comb_90 = ((IMG_HEIGHT - 1) - x_rel) * IMG_WIDTH + y_rel;
        else
            addr_comb_90 = '0;
    end

    always_ff @(posedge clk) begin
        if (~rst) begin
            addr_reg <= 1'b0;
            read_mem_en_reg <= 1'b0;
        end else begin
            addr_reg <= addr_comb_90;
            read_mem_en_reg <= read_mem_en;
        end
    end

    // --- BRAM interface ---
    logic [COLOR_WIDTH-1:0] bram_data;
    logic [COLOR_WIDTH-1:0] bram_data_u, bram_data_d, bram_data_r, bram_data_l, bram_data_ru, bram_data_rd, bram_data_lu, bram_data_ld;
    
    // Note: Ensure your Block Memory Generators are set to width 16 for ARGB support
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

    // =========================================================================
    // --- Output Pipeline with Alpha Blending ---
    // =========================================================================
    
    // 1. Separate channels
    // Assuming ARGB format (4 bits each)
    logic [3:0] fg_a, fg_r, fg_g, fg_b; // Foreground (Sprite)
    logic [3:0] bg_r, bg_g, bg_b;       // Background
    
    assign {fg_a, fg_r, fg_g, fg_b} = bram_data; 
    
    // Extract RGB from background (Assuming BG input is lower 12 bits)
    assign {bg_r, bg_g, bg_b}       = bg_color[11:0];

    // 2. Calculate Effective Alpha
    // We only use the sprite's alpha if:
    //   a. We are reading valid memory (read_mem_en_reg)
    //   b. We are NOT blinking (collision/stuck effect)
    logic [3:0] alpha_eff;
    assign alpha_eff = (read_mem_en_reg && ~blink) ? fg_a : 4'd0;
    
    // 3. Inverse Alpha (for background)
    logic [3:0] inv_alpha;
    assign inv_alpha = 4'd15 - alpha_eff;

    // 4. Blending Calculation (Combinational)
    // Formula: (FG * Alpha) + (BG * (15-Alpha))
    // Max Result: 15*15 + 15*0 = 225. Fits in 8 bits, but using 9 for safety.
    logic [8:0] r_mixed, g_mixed, b_mixed;
    
    always_comb begin
        r_mixed = (fg_r * alpha_eff) + (bg_r * inv_alpha);
        g_mixed = (fg_g * alpha_eff) + (bg_g * inv_alpha);
        b_mixed = (fg_b * alpha_eff) + (bg_b * inv_alpha);
    end

    // 5. Output Register (Divide by 16 via shift)
    always_ff @(posedge clk) begin
        if (~rst) begin
            o_pix_r <= 0;
            o_pix_g <= 0;
            o_pix_b <= 0;
        end else begin
            // Take bits [7:4] effectively divides by 16
            o_pix_r <= r_mixed[7:4]; 
            o_pix_g <= g_mixed[7:4];
            o_pix_b <= b_mixed[7:4];
        end
    end

endmodule