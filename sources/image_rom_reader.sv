`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2025 02:18:19 PM
// Design Name: 
// Module Name: image_rom_reader
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module image_rom_reader #(
    parameter IMG_WIDTH = 400,
    parameter IMG_HEIGHT = 457,
    parameter COLOR_WIDTH = 12,   // e.g., RGB444
    parameter ADDR_WIDTH = 18     // ceil(log2(IMG_WIDTH*IMG_HEIGHT))
)(
    input  logic         clk,
    input  logic         rst,
    input  logic [10:0]  curr_x,
    input  logic [9:0]   curr_y,
    input  logic [10:0]  pos_x,
    input  logic [9:0]   pos_y,
    input  logic [COLOR_WIDTH-1:0] bg_color, // background color
    output logic [3:0]   o_pix_r,
    output logic [3:0]   o_pix_g,
    output logic [3:0]   o_pix_b
);

    // Compute pixel coordinate relative to image
    logic [10:0] x_rel;
    logic [9:0]  y_rel;
    logic read_mem_en = (curr_x >= pos_x) & (curr_y >= pos_y) &  (curr_x < pos_x + IMG_WIDTH) & (curr_y < pos_y + IMG_HEIGHT);
                        
    assign x_rel = curr_x - pos_x;
    assign y_rel = curr_y - pos_y;

    // Compute address combinationally
    logic [ADDR_WIDTH-1:0] addr;
    always_comb begin
        if (read_mem_en)
            addr = y_rel * IMG_WIDTH + x_rel;
        else
            addr = 0; // default address for out-of-bound
    end

    // BRAM output
    logic [COLOR_WIDTH-1:0] bram_data;

    // Instantiate Block RAM
    blk_mem_gen_0 prayer_hands (
        .clka(clk),
        .addra(addr),
        .douta(bram_data)
    );

    // 2-stage pipeline for output
    logic [COLOR_WIDTH-1:0] stage1, stage2;

    always_ff @(posedge clk) begin
        if (~rst) begin
            stage1 <= bg_color;
            stage2 <= bg_color;
        end else begin
            stage1 <= (read_mem_en) ? bram_data : bg_color;
            stage2 <= stage1;
        end
    end

    // Split RGB output
    assign {o_pix_r, o_pix_g, o_pix_b} = stage2;

endmodule

