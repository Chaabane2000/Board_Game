`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2025 03:39:33 PM
// Design Name: 
// Module Name: vga_out
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


module vga_out(
    input clk,
    output [3:0] pix_r,
    output [3:0] pix_g,
    output [3:0] pix_b,
    output hsync,
    output vsync,
    output reg [10:0] curr_x,
    output reg [9:0] curr_y
    );
    
    logic [10:0] hcount = 11'b0000_0000_000;
    logic [9:0] vcount = 10'b0000_0000_00;
     
    assign hsync = (hcount<=135) ? 1'b0 : 1'b1;
    assign vsync = (vcount<=2) ? 1'b1 : 1'b0;
    
    assign pix_r = (hcount>=336 && hcount<=1615 && vcount>=27 && vcount<=826) ? 4'b0000 : 4'b0000;
    assign pix_g = (hcount>=336 && hcount<=1615 && vcount>=27 && vcount<=826) ? 4'b0000 : 4'b0000;
    assign pix_b = (hcount>=336 && hcount<=1615 && vcount>=27 && vcount<=826) ? 4'b1111 : 4'b0000;
    
    always_ff@(posedge clk)
    begin
        if (hcount==1679)
        begin
            hcount <= 11'b0000_0000_000;
            if (vcount==827)
                vcount <= 10'b0000_0000_00;
            else
                vcount <= vcount + 1'b1;
            end
        else
            hcount <= hcount + 1'b1;
    
    if (hcount>=336 && hcount<=1615)
        curr_x = hcount - 336;
    else
        curr_x = -1;
    if (vcount>=27 && vcount<=826)
        curr_y = vcount - 27;
    else
        curr_y = -1;
      
    end
    
    
endmodule
