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
    input clk, rst, in_up_bn, in_down_bn, in_left_bn, in_right_bn,
    input PS2_CLK, PS2_DATA,
    output logic aud_pwm,   
    output logic aud_sd,     
    //outputs
    output reg [3:0] pix_r,
    output reg [3:0] pix_g,
    output reg [3:0] pix_b,
    output hsync,
    output vsync,
    // 7-segment cathodes
    output logic CA,
    output logic CB,
    output logic CC,
    output logic CD,
    output logic CE,
    output logic CF,
    output logic CG,
    output logic DP,

    // 7-segment anodes (digits)
    output logic [7:0] AN
    //output [10:0] curr_x, // for simulation, comment when implementing on FPGA
    //output [9:0] curr_y // for simulation, comment when implementing on FPGA
    );
    
    wire pixclk;
    clk_wiz_0 instance_name
   (
    // Clock out ports
    .clk_out1(pixclk),     // output clk_out1
   // Clock in ports
    .clk_in1(clk));      // input clk_in1
    logic in_up_key, in_down_key, in_left_key, in_right_key, in_space_key;
    keyboard_arrows keyboard(
    .clk(clk),         // system clock
    .ps2_clk(PS2_CLK),     // PS2 clock input
    .ps2_data(PS2_DATA),    // PS2 data input
    .up(in_up_key),
    .down(in_down_key),
    .left(in_left_key),
    .right(in_right_key),
    .space(in_space_key)
    );
    
    logic in_up, in_down, in_left, in_right;
    assign in_up = in_up_key || in_up_bn;
    assign in_down = in_down_key || in_down_bn;
    assign in_left = in_left_key || in_left_key;
    assign in_right = in_right_key || in_right_key;
    
    logic [10:0] curr_x; // for implementation, comment when simulating
    logic [9:0] curr_y; // for implementation, comment when simulating
    logic [3:0] pix_wire_r_0, pix_wire_g_0, pix_wire_b_0;
    logic [3:0] pix_wire_r_1, pix_wire_g_1, pix_wire_b_1;
    logic [3:0] pix_wire_r_2, pix_wire_g_2, pix_wire_b_2;
    //assign {pix_wire_r_0, pix_wire_g_0, pix_wire_b_0} = 12'h000;
    //assign {pix_wire_r_1, pix_wire_g_1, pix_wire_b_1} = 12'h000;
    //assign {pix_wire_r_2, pix_wire_g_2, pix_wire_b_2} = 12'h000;
    
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
    
//    logic [3:0] pix_wire_r_1, pix_wire_g_1, pix_wire_b_1;
//     drawcon red_rec ( .in_pos_x(x_pos), .in_width_x(140), .draw_x(curr_x), 
//                     .in_pos_y(y_pos), .in_width_y(100), .draw_y(curr_y),
//                     .bg_color({pix_wire_r_0, pix_wire_g_0, pix_wire_b_0}), 
//                     .in_pix_r(4'b1111), .in_pix_g(4'b0000), .in_pix_b(4'b0000),
//                     .o_pix_r(pix_wire_r_1), .o_pix_g(pix_wire_g_1), .o_pix_b(pix_wire_b_1));
//    image_rom_reader img(.clk(pixclk), .rst(rst), .curr_x(curr_x), .curr_y(curr_y), .pos_x(x_pos), .pos_y(y_pos), .bg_color({pix_wire_r_0, pix_wire_g_0, pix_wire_b_0}),
//                        .o_pix_r(pix_wire_r_1), .o_pix_g(pix_wire_g_1), .o_pix_b(pix_wire_b_1));
    
   
    // Create 40x25 background tilemap 
    //logic [3:0] pix_wire_r_2, pix_wire_g_2, pix_wire_b_2;
    logic [5:0] tilemap [0:24][0:39];

    initial begin
        integer i, j;
        for (i=0; i<25; i=i+1) 
        begin
            for (j=0; j<40; j=j+1) 
            begin
                tilemap[i][j] = 5'd0;  // grass
            end
        end
        tilemap[5][10] = 5'd0;
        tilemap[5][29] = 5'd0;
        tilemap[19][29] = 5'd0;
        tilemap[19][10] = 5'd0;
        
        
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
        tilemap[7][27] = 5'd19;
        
        tilemap[19][28] = 5'd9;
        tilemap[19][29] = 5'd5;
        tilemap[18][29] = 5'd16;
        tilemap[18][28] = 5'd13;
        tilemap[17][27] = 5'd20;
        
        tilemap[18][10] = 5'd10;
        tilemap[19][10] = 5'd6;
        tilemap[19][11] = 5'd17;
        tilemap[18][11] = 5'd13;
        tilemap[17][12] = 5'd21;
        
        //start line
        tilemap[5][19] = 5'd22;
        tilemap[6][19] = 5'd23;
        tilemap[7][19] = 5'd24;
        tilemap[6][18] = 5'd25;
        
       
    end
    
    

    background bg (
        .clk(pixclk),
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
    
    logic [10:0] x_pos;
    logic [9:0] y_pos;
    logic [3:0] speed;
    logic [3:0] accel_flag;
    localparam slowSpeed = 0,  highSpeed= 1;

    assign accel_flag = {in_right, in_left, in_down, in_up};
    
    moving_car_states green_car(.clk(pixclk), .rst(rst), .curr_x(curr_x), .curr_y(curr_y), .accel_flag(accel_flag), .bg_color({pix_wire_r_2, pix_wire_g_2, pix_wire_b_2}), .in_up(in_up), .in_down(in_down), .in_left(in_left), .in_right(in_right), .tilemap(tilemap), .o_pix_r(pix_wire_r_1), .o_pix_g(pix_wire_g_1), .o_pix_b(pix_wire_b_1), .y_pos(y_pos), .x_pos(x_pos));
    
    // Calculate score
    logic [3:0] ones, tens, hundreds;
    logic crossed_line;
    logic [9:0] lap_time;
    logic started = 0;
    score lap_timer (
        .clk(clk),
        .rst(rst),
        .x_pos(x_pos),
        .y_pos(y_pos),
        .crossed_line(crossed_line),
        .lap_time(lap_time),
        .started(started),
        .ones(ones),
        .tens(tens),
        .hundreds(hundreds)
    );
    
    // Display
    
    multidigit dgt (
        .clk(clk),
        .rst(rst),          
        .dig7(4'b0000), .dig6(4'b0000), .dig5(4'b0000), .dig4(4'b0000), .dig3(4'b0000), .dig2(hundreds), .dig1(tens), .dig0(ones), 
        .a(CA), .b(CB), .c(CC), .d(CD), .e(CE), .f(CF), .g(CG),
        .dp(DP),
        .an(AN)
    );
    
    // Show score in the middle of the screen
    
    always @(*) begin
        // When the line is crossed, show letters
        if (crossed_line && started) begin
            tilemap[12][13] = 26;   // 'L'
            tilemap[12][14] = 27;    // 'A'
            tilemap[12][15] = 28;   // 'P'
            tilemap[12][17] = 29;   // 'T'
            tilemap[12][18] = 30;   // 'I'
            tilemap[12][19] = 31;   // 'M'
            tilemap[12][20] = 32;   // 'E'
            tilemap[12][21] = 33;   // ':'
            tilemap[12][23] = 35 + hundreds;   // output hundreds digit
            tilemap[12][24] = 35 + tens;       // output tens digit
            tilemap[12][25] = 35 + ones;       // output ones digit
            tilemap[12][26] = 34;   // 'S'   
        end
    
        // After 3 seconds, clear the tiles
        if (lap_time > 3) begin
            tilemap[12][13] = 0;   
            tilemap[12][14] = 0;    
            tilemap[12][15] = 0;   
            tilemap[12][17] = 0;   
            tilemap[12][18] = 0;  
            tilemap[12][19] = 0;  
            tilemap[12][20] = 0;   
            tilemap[12][21] = 0;  
            tilemap[12][23] = 0;   
            tilemap[12][24] = 0; 
            tilemap[12][25] = 0; 
            tilemap[12][26] = 0;  
        end
    end
    
    // Audio test
    /*audio_test (
        .clk(clk),      
        .aud_pwm(aud_pwm),  
        .aud_sd(aud_sd)    
    );*/
    
    vga_out vga (.clk(pixclk), .pix_in_r(pix_wire_r_1), .pix_in_g(pix_wire_g_1), .pix_in_b(pix_wire_b_1),.pix_r(pix_r), .pix_g(pix_g), .pix_b(pix_b), .hsync(hsync), .vsync(vsync), .curr_x(curr_x), .curr_y(curr_y));

endmodule