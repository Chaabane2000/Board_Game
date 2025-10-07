`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2025 11:25:17 AM
// Design Name: 
// Module Name: game_top
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


module game_top(
    input clk,
    output reg [3:0] pix_r,
    output reg [3:0] pix_g,
    output reg [3:0] pix_b,
    output hsync,
    output vsync
    );
    
    wire pixclk;
    clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(pixclk),     // output clk_out1
   // Clock in ports
    .clk_in1(clk));      // input clk_in1
    
    logic [10:0] curr_x;
    logic [9:0] curr_y;
    logic [3:0] pix_wire_r_0, pix_wire_g_0, pix_wire_b_0;
    assign {pix_wire_r_0, pix_wire_g_0, pix_wire_b_0} = ~(0);
    
    // This is not correct, you can remove it or fix 
    // abdo: fixed now :)
    // always_comb
    // begin
    //     //maybe look meaningless but to avoid creating latch
    //     pix_wire_r = 4'b0000;
    //     pix_wire_g = 4'b0000;
    //     pix_wire_b = 4'b0000;
        
    //     if (520<curr_x && curr_x<760 && 300<curr_y && curr_y<500)
    //     begin
    //         pix_wire_r = 4'b1111;
    //         pix_wire_g = 4'b0000;
    //         pix_wire_b = 4'b0000;
    //     end
    //     else
    //     begin
    //         pix_wire_r = 4'b0000;
    //         pix_wire_g = 4'b0000;
    //         pix_wire_b = 4'b0000;
    //     end
            
    // end
    logic [3:0] pix_wire_r_1, pix_wire_g_1, pix_wire_b_1;
    drawcon red_rec ( .in_pos_x(520), .in_width_x(140), .draw_x(curr_x), 
                    .in_pos_y(300), .in_width_y(100), .draw_y(curr_y),
                    .bg_color({pix_wire_r_0, pix_wire_g_0, pix_wire_b_0}), 
                    .in_pix_r(4'b1111), .in_pix_g(4'b0000), .in_pix_b(4'b0000),
                    .o_pix_r(pix_wire_r_1), .o_pix_g(pix_wire_g_1), .o_pix_b(pix_wire_b_1));
    
    logic [3:0] pix_wire_r_2, pix_wire_g_2, pix_wire_b_2;
    drawcon blue_rec ( .in_pos_x(520), .in_width_x(140), .draw_x(curr_x), 
                    .in_pos_y(400), .in_width_y(100), .draw_y(curr_y),
                    .bg_color({pix_wire_r_1, pix_wire_g_1, pix_wire_b_1}), 
                    .in_pix_r(4'b0000), .in_pix_g(4'b0000), .in_pix_b(4'b1111),
                    .o_pix_r(pix_wire_r_2), .o_pix_g(pix_wire_g_2), .o_pix_b(pix_wire_b_2));                    
    

    vga_out vga (.clk(pixclk), .pix_in_r(pix_wire_r_2), .pix_in_g(pix_wire_g_2), .pix_in_b(pix_wire_b_2),.pix_r(pix_r), .pix_g(pix_g), .pix_b(pix_b), .hsync(hsync), .vsync(vsync), .curr_x(curr_x), .curr_y(curr_y));

endmodule
