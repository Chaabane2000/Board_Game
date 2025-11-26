`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2025 04:00:19 PM
// Design Name: 
// Module Name: moving_car
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Car sprite renderer with proper BRAM pipeline
// 
//////////////////////////////////////////////////////////////////////////////////

module moving_car_states#(
    parameter IMG_WIDTH_H   = 30,
    parameter IMG_HEIGHT_H  = 51,
    parameter IMG_WIDTH_V   = 51,
    parameter IMG_HEIGHT_V  = 29,
    parameter IMG_WIDTH_D   = 51,
    parameter IMG_HEIGHT_D  = 51,
    parameter COLOR_WIDTH = 12,   // e.g., RGB444
    parameter ADDR_WIDTH  = 12
    
)(
    input  logic         clk,
    input  logic         rst,
    input  logic [10:0]  curr_x,
    input  logic [9:0]   curr_y,
    input  logic [COLOR_WIDTH-1:0] bg_color, // background color
    input logic in_up, in_down, in_left, in_right,
    input logic [5:0] tilemap [0:24][0:39],
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

    logic [19:0] pos_update_counter; 
    logic [15:0] vel_update_counter;
    localparam max_x = 1279, max_y = 799;
    localparam step = 1;    

    logic signed [3:0] x_vel, y_vel; // Velocity vectors
    localparam max_vel = 8;

    logic walkable1, walkable2, walkable3, walkable4;
    logic walkable_next1, walkable_next2, walkable_next3, walkable_next4;

    collision_mask u_collision_mask1 (.curr_x(next_x), .curr_y(next_y), .tilemap(tilemap), .walkable(walkable_next1));
    collision_mask u_collision_mask2 (.curr_x(next_x + IMG_WIDTH), .curr_y(next_y), .tilemap(tilemap), .walkable(walkable_next2));
    collision_mask u_collision_mask3 (.curr_x(next_x), .curr_y(next_y + IMG_HEIGHT), .tilemap(tilemap), .walkable(walkable_next3));
    collision_mask u_collision_mask4 (.curr_x(next_x + IMG_WIDTH), .curr_y(next_y + IMG_HEIGHT), .tilemap(tilemap), .walkable(walkable_next4));
    
    //logic walkable = walkable1, && walkable2 && walkable3 && walkable4;
    
    logic rot_h, rot_v, rot_d;

    collision_mask u1(.curr_x(x_pos + IMG_WIDTH),       .curr_y(y_pos),            .tilemap(tilemap), .walkable(rot_h));
    collision_mask u2(.curr_x(x_pos),               .curr_y(y_pos + IMG_HEIGHT),   .tilemap(tilemap), .walkable(rot_v));
    collision_mask u3(.curr_x(x_pos + IMG_WIDTH),       .curr_y(y_pos + IMG_HEIGHT),  .tilemap(tilemap), .walkable(rot_d));

    //logic walkable_rot = walk1 && walk2 && walk3;
    
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
                if(in_down&~in_up&~in_left&~in_right && rot_v)begin
                    next_state = right_st;
                end
                else if(in_up&~in_down&~in_left&~in_right && rot_v)begin
                    next_state = left_st;
                end
                else if(~in_up&in_down&~in_left&in_right && rot_d)begin
                    next_state = diagonal_ru_s;
                end
                else if(in_up&~in_down&~in_left&in_right && rot_d)begin
                    next_state = diagonal_lu_s;
                end

            end
            down_st:begin
                IMG_HEIGHT = IMG_HEIGHT_H;
                IMG_WIDTH = IMG_WIDTH_H;
                bram_data = bram_data_d;
                if(in_down&~in_up&~in_left&~in_right && rot_v)begin
                    next_state = right_st;
                end
                else if(in_up&~in_down&~in_left&~in_right && rot_v)begin
                    next_state = left_st;
                end
                else if(~in_up&in_down&in_left&~in_right && rot_d)begin
                    next_state = diagonal_rd_s;
                end
                else if(in_up&~in_down&in_left&~in_right && rot_d)begin
                    next_state = diagonal_ld_s;
                end
            end
            left_st:begin
                IMG_HEIGHT = IMG_HEIGHT_V;
                IMG_WIDTH = IMG_WIDTH_V;
                bram_data = bram_data_l;
                if(in_right&~in_left&~in_up&~in_down && rot_h)begin
                    next_state = up_st;
                end
                else if(in_left&~in_right&~in_up&~in_down && rot_h)begin
                    next_state = down_st;
                end
                else if(~in_left&in_right&in_up&~in_down && rot_d)begin
                    next_state = diagonal_lu_s;
                end
                else if(in_left&~in_right&in_up&~in_down && rot_d)begin
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
    
    always_ff @(posedge clk ) begin
        if (~rst)
        begin 
            x_pos <= 576; //416;
            y_pos <= 192;
            x_vel <= 0;
            y_vel <= 0;
            pos_update_counter <= 0;
            vel_update_counter <= 0;
        end
        else
        begin
            vel_update_counter <= vel_update_counter + 1;
            if (vel_update_counter == 16'hFFFF) begin // Slow down velocity updates
                vel_update_counter <= 0;
                // -- Update Velocities --
                // Y-axis velocity
                if (accel_flag && in_up) begin // Accelerate Up
                    if (y_vel > -max_vel) y_vel <= y_vel - 1; 
                end else if (accel_flag && in_down) begin // Accelerate Down
                    if (y_vel < max_vel) y_vel <= y_vel + 1; 
                end else begin // Decelerate Y
                    if (y_vel > 0) y_vel <= y_vel - 1;
                    else if (y_vel < 0) y_vel <= y_vel + 1;
                end
    
                // X-axis velocity
                if (accel_flag && in_left) begin // Accelerate Left
                    if (x_vel > -max_vel) x_vel <= x_vel - 1; 
                end else if (accel_flag && in_right) begin // Accelerate Right
                    if (x_vel < max_vel) x_vel <= x_vel + 1; 
                end else begin // Decelerate X
                    if (x_vel > 0) x_vel <= x_vel - 1;
                    else if (x_vel < 0) x_vel <= x_vel + 1;
                end
            end

            // -- Update Position --
            // Using a simple clock divider for overall speed control
            pos_update_counter <= pos_update_counter + 1; 
            if(pos_update_counter[17]) begin // Adjust this bit to change overall speed
                pos_update_counter <= 0;

                // Check bounds and walkability before updating position
                logic signed [10:0] temp_x = x_pos + x_vel;
                logic signed [9:0] temp_y = y_pos + y_vel;

                if (walkable1) begin // Use a single corner for collision check for now
                    if (temp_x > 0 && temp_x < max_x - IMG_WIDTH) begin
                        x_pos <= temp_x;
                    end else begin
                        x_vel <= 0; // Stop if hitting horizontal boundary
                    end
                    
                    if (temp_y > 0 && temp_y < max_y - IMG_HEIGHT) begin
                        y_pos <= temp_y;
                    end else begin
                        y_vel <= 0; // Stop if hitting vertical boundary
                    end
                end else begin
                    // Stop if not on a walkable tile
                    x_vel <= 0;
                    y_vel <= 0;
                end
            end
        end
    end

    // --- Relative coordinates ---
    logic [10:0] x_rel;
    logic [9:0]  y_rel;
    logic read_mem_en;
    logic mask_bit;

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
            // addr_comb = y_rel * IMG_WIDTH + x_rel;
        else
            addr_comb_90 = '0;
            // addr_comb = 0;
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

    // --- Output pipeline ---
    logic [COLOR_WIDTH-1:0] stage1, stage2;
    // assign mask_bit = CAR_MASK[addr_comb_90];
    assign mask_bit = bram_data != 0;
    always_ff @(posedge clk) begin
        if (~rst) begin
            stage1 <= bg_color;
            stage2 <= bg_color;
        end else begin
            //stage1 <= (read_mem_en_reg && mask_bit) ? bram_data : bg_color;
            stage1 <= (mask_bit) ? bram_data : bg_color;
            stage2 <= stage1;
        end
    end

    assign {o_pix_r, o_pix_g, o_pix_b} = stage2;

endmodule
