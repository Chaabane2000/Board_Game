`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2025 12:03:15 AM
// Design Name: 
// Module Name: drawcon
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


module drawcon(
    //inputs
    input logic [10:0] in_pos_x, in_width_x, draw_x,
    input logic [9:0] in_pos_y, in_width_y, draw_y,
    input logic [11:0] bg_color,
    input logic [3:0] in_pix_r, in_pix_g, in_pix_b,

    //outputs
    output logic [3:0] o_pix_r, o_pix_g, o_pix_b

    );

    always_comb
    begin
        
        if (draw_x >= in_pos_x && draw_x < (in_pos_x + in_width_x) && draw_y >= in_pos_y && draw_y < (in_pos_y + in_width_y))
        begin
            {o_pix_r,o_pix_g,o_pix_b} = {in_pix_r, in_pix_g, in_pix_b};
        end
        else
        begin
            {o_pix_r, o_pix_g, o_pix_b} = bg_color;
        end
    end
endmodule
