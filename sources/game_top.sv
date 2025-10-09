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
    //inputs
    input clk, rst, in_up, in_down, in_left, in_right,
    //outputs
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
    logic [19:0] div_counter; 
    localparam max_x = 1279, max_y = 799, step = 1;
    logic [10:0] x_pos;
    logic [9:0] y_pos;
    always_ff @(posedge pixclk ) begin
        if (~rst)
        begin
            div_counter = 0;
            x_pos = 520;
            y_pos = 300;
        end
        else
        begin
            if(div_counter[19])//game logic
            begin
                div_counter <= 0;
                //move up
                if(in_up)
                begin
                    if (signed'(y_pos - step) > 0)
                        y_pos <= y_pos - step;
                    else
                        y_pos <= 0;
                end
                //move down
                if(in_down)
                begin
                    if ((y_pos + step) < max_y)
                        y_pos <= y_pos + step;
                    else
                        y_pos <= max_y;
                end
                //move left
                if(in_left)
                begin
                    if (signed'(x_pos - step) > 0)
                        x_pos <= x_pos - step;
                    else
                        x_pos <= 0;
                end
                //move right
                if(in_right)
                begin
                    if ((x_pos + step) < max_x)
                        x_pos <= x_pos + step;
                    else
                        x_pos <= max_x;
                end
            end

            else
                div_counter<=div_counter+1;
        end
    end
//    logic [3:0] pix_wire_r_1, pix_wire_g_1, pix_wire_b_1;
//     drawcon red_rec ( .in_pos_x(x_pos), .in_width_x(140), .draw_x(curr_x), 
//                     .in_pos_y(y_pos), .in_width_y(100), .draw_y(curr_y),
//                     .bg_color({pix_wire_r_0, pix_wire_g_0, pix_wire_b_0}), 
//                     .in_pix_r(4'b1111), .in_pix_g(4'b0000), .in_pix_b(4'b0000),
//                     .o_pix_r(pix_wire_r_1), .o_pix_g(pix_wire_g_1), .o_pix_b(pix_wire_b_1));
//    image_rom_reader img(.clk(pixclk), .rst(rst), .curr_x(curr_x), .curr_y(curr_y), .pos_x(x_pos), .pos_y(y_pos), .bg_color({pix_wire_r_0, pix_wire_g_0, pix_wire_b_0}),
//                        .o_pix_r(pix_wire_r_1), .o_pix_g(pix_wire_g_1), .o_pix_b(pix_wire_b_1));

    // Create 40x25 background tilemap 
    logic [3:0] pix_wire_r_2, pix_wire_g_2, pix_wire_b_2;
    logic [4:0] tilemap [0:24][0:39];

    initial begin
        integer i, j;
        for (i=0; i<25; i=i+1) 
        begin
            for (j=0; j<40; j=j+1) 
            begin
                tilemap[i][j] = 5'd0;  // grass
            end
        end
        
        for (i=12; i<=27; i=i+1)
        begin
            tilemap[5][i] = 5'd1;
            tilemap[6][i] = 5'd13;
            tilemap[7][i] = 5'd2;
            tilemap[17][i] = 5'd1;
            tilemap[18][i] = 5'd13;
            tilemap[19][i] = 5'd2;
        end  
        
        for (j=7; j<=17; j=j+1)
        begin
            tilemap[j][10] = 5'd11;
            tilemap[j][11] = 5'd13;
            tilemap[j][12] = 5'd12;
            tilemap[j][27] = 5'd11;
            tilemap[j][28] = 5'd13;
            tilemap[j][29] = 5'd12;
        end 
        
        tilemap[5][11] = 5'd7;
        tilemap[5][10] = 5'd3;
        tilemap[6][10] = 5'd14;
        tilemap[6][11] = 5'd13;
        tilemap[7][12] = 5'd18;
        
        tilemap[6][29] = 5'd8;
        tilemap[5][29] = 5'd4;
        tilemap[5][28] = 5'd15;
        tilemap[6][28] = 5'd13;
        tilemap[7][27] = 5'd18;
        
        tilemap[19][28] = 5'd9;
        tilemap[19][29] = 5'd5;
        tilemap[18][29] = 5'd16;
        tilemap[18][28] = 5'd13;
        tilemap[17][27] = 5'd18;
        
        tilemap[18][10] = 5'd10;
        tilemap[19][10] = 5'd6;
        tilemap[19][11] = 5'd17;
        tilemap[18][11] = 5'd13;
        tilemap[17][12] = 5'd18;
       
    end

    background bg (
        .clk(clk),
        .rst(rst),
        .curr_x(curr_x),
        .curr_y(curr_y),
        .tilemap(tilemap),
        .bg_color(12'h000),  // black background
        .o_pix_r(pix_wire_r_2),
        .o_pix_g(pix_wire_g_2),
        .o_pix_b(pix_wire_b_2)
    );
    
    // logic [3:0] pix_wire_r_2, pix_wire_g_2, pix_wire_b_2;
    // drawcon blue_rec ( .in_pos_x(x_pos), .in_width_x(140), .draw_x(curr_x), 
    //                 .in_pos_y(y_pos+100), .in_width_y(100), .draw_y(curr_y),
    //                 .bg_color({pix_wire_r_1, pix_wire_g_1, pix_wire_b_1}), 
    //                 .in_pix_r(4'b0000), .in_pix_g(4'b0000), .in_pix_b(4'b1111),
    //                 .o_pix_r(pix_wire_r_2), .o_pix_g(pix_wire_g_2), .o_pix_b(pix_wire_b_2));                    
    

    vga_out vga (.clk(pixclk), .pix_in_r(pix_wire_r_2), .pix_in_g(pix_wire_g_2), .pix_in_b(pix_wire_b_2),.pix_r(pix_r), .pix_g(pix_g), .pix_b(pix_b), .hsync(hsync), .vsync(vsync), .curr_x(curr_x), .curr_y(curr_y));

endmodule
