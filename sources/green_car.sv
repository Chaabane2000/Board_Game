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

module moving_car#(
    parameter IMG_WIDTH   = 30,
    parameter IMG_HEIGHT  = 51,
    parameter COLOR_WIDTH = 12,   // e.g., RGB444
    parameter ADDR_WIDTH  = 11    // ceil(log2(IMG_WIDTH*IMG_HEIGHT))
    
)(
    input  logic         clk,
    input  logic         rst,
    input  logic [10:0]  curr_x,
    input  logic [9:0]   curr_y,
    input  logic [COLOR_WIDTH-1:0] bg_color, // background color
    input logic in_up, in_down, in_left, in_right,
    input logic [4:0] tilemap [0:24][0:39],
    output logic [3:0]   o_pix_r,
    output logic [3:0]   o_pix_g,
    output logic [3:0]   o_pix_b
);
    localparam [0:1530-1] CAR_MASK = {
    30'b000000011111111111111110000000,
    30'b000011111111111111111111100000,
    30'b000111111111111111111111111000,
    30'b000111111111111111111111111000,
    30'b001111111111111111111111111100,
    30'b011111111111111111111111111110,
    30'b011111111111111111111111111110,
    30'b011111111111111111111111111110,
    30'b111111111111111111111111111110,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b111111111111111111111111111111,
    30'b011111111111111111111111111110,
    30'b011111111111111111111111111110,
    30'b001111111111111111111111111100,
    30'b001111111111111111111111111100,
    30'b000011111111111111111111110000,
    30'b000000111111111111111111000000
};
    
    logic walkable;
    logic [10:0] next_x;
    logic [9:0]  next_y;

    logic [19:0] div_counter; 
    localparam max_x = 1279, max_y = 799, step = 1;
    logic [10:0] x_pos = 416;
    logic [9:0] y_pos = 192;
    
    logic walkable_next;

    collision_mask u_collision_mask (
        .clk(clk),
        .curr_x(next_x),
        .curr_y(next_y),
        .tilemap(tilemap),
        .walkable(walkable_next)
    );

    always_ff @(posedge clk) begin
        walkable <= walkable_next;
    end
    
    // Compute next coordinates (combinational)
    always_comb begin
        next_x = x_pos;
        next_y = y_pos;
    
        if (in_up)
            next_y = y_pos - step;
        else if (in_down)
            next_y = y_pos + IMG_WIDTH + step;
        else if (in_left)
            next_x = x_pos - step;
        else if (in_right)
            next_x = x_pos + IMG_HEIGHT + step;
    end
    
    always_ff @(posedge clk ) begin
        if (~rst)
        begin
            div_counter <= 0;
            x_pos <= 416;
            y_pos <= 192;
        end
        else
        begin
            if(div_counter[18])//game logic
            begin
                div_counter <= 0;
                //move up
                if(in_up && walkable)
                begin
                    if (signed'(y_pos - step) > 0)
                        y_pos <= y_pos - step;
                    //else
                    //    y_pos <= 0;
                end
                //move down
                if(in_down && walkable)
                begin
                    if ((y_pos + step) < max_y)
                        y_pos <= y_pos + step;
                    //else
                    //    y_pos <= max_y;
                end
                //move left
                if(in_left && walkable)
                begin
                    if (signed'(x_pos - step) > 0)
                        x_pos <= x_pos - step;
                    //else
                    //    x_pos <= 0;
                end
                //move right
                if(in_right && walkable)
                begin
                    if ((x_pos + step) < max_x)
                        x_pos <= x_pos + step;
                    //else
                    //    x_pos <= max_x;
                end
            end

            else
                div_counter<=div_counter+1;
        end
    end

    // --- Relative coordinates ---
    logic [10:0] x_rel;
    logic [9:0]  y_rel;
    logic        read_mem_en;
    logic mask_bit;

    assign read_mem_en = (curr_x >= x_pos) && (curr_y >= y_pos) &&
                         (curr_x < x_pos + IMG_HEIGHT) && (curr_y < y_pos + IMG_WIDTH);

    assign x_rel = curr_x - x_pos;
    assign y_rel = curr_y - y_pos;

    // --- Address pipeline ---
    logic [ADDR_WIDTH-1:0] addr_comb_90;
    logic [ADDR_WIDTH-1:0] addr_reg;
    logic read_mem_en_reg;
    
    assign mask_bit = CAR_MASK[addr_comb_90];

    always_comb begin
        if (read_mem_en)
            addr_comb_90 = ((IMG_HEIGHT - 1) - x_rel) * IMG_WIDTH + y_rel;
            //addr_comb = y_rel * IMG_WIDTH + x_rel;
        else
            addr_comb_90 = '0;
    end

    always_ff @(posedge clk) begin
        if (~rst) begin
            addr_reg <= '0;
            read_mem_en_reg <= 1'b0;
        end else begin
            addr_reg <= addr_comb_90;
            read_mem_en_reg <= read_mem_en;
        end
    end

    // --- BRAM interface ---
    logic [COLOR_WIDTH-1:0] bram_data;

    green_car car (
        .clka(clk),
        .addra(addr_reg),
        .douta(bram_data)
    );

    // --- Output pipeline ---
    logic [COLOR_WIDTH-1:0] stage1, stage2;

    always_ff @(posedge clk) begin
        if (~rst) begin
            stage1 <= bg_color;
            stage2 <= bg_color;
        end else begin
            stage1 <= (read_mem_en_reg && mask_bit) ? bram_data : bg_color;
            stage2 <= stage1;
        end
    end

    assign {o_pix_r, o_pix_g, o_pix_b} = stage2;

endmodule
