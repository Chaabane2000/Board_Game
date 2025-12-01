`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: game_top
// Description: Top Level Module
//              FIXED: Audio Logic now MIXES Win Sound with Music correctly.
//              FIXED: Added CDC (Toggle) logic to reliably catch fast game events.
//              FIXED: Added SW[15] debug trigger.
//              FIXED: Audio mixing logic to prevent clipping (High Frequency Whistle).
//////////////////////////////////////////////////////////////////////////////////


module game_top(
    //inputs
    input clk, rst, in_up_bn, in_down_bn, in_left_bn, in_right_bn, in_center,
    input PS2_CLK, PS2_DATA,
    input [15:0] SW, // Changed to vector to support SW[15]
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
    .clk(clk),          // system clock
    .ps2_clk(PS2_CLK),      // PS2 clock input
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
    assign in_left = in_left_key || in_left_bn;
    assign in_right = in_right_key || in_right_bn;
   
    logic [10:0] curr_x; // for implementation, comment when simulating
    logic [9:0] curr_y; // for implementation, comment when simulating
    logic [3:0] pix_wire_r_0, pix_wire_g_0, pix_wire_b_0;
    logic [3:0] pix_wire_r_1, pix_wire_g_1, pix_wire_b_1;
    logic [3:0] pix_wire_r_2, pix_wire_g_2, pix_wire_b_2;
   
    // Create 40x25 background tilemap 
    logic [6:0] tilemap [0:24][0:39];
    logic swtch;

    initial begin
        integer i, j;
        for (i=0; i<25; i=i+1) 
        begin
            for (j=0; j<40; j=j+1) 
            begin
                tilemap[i][j] = 7'd0;  // grass
            end
        end
        tilemap[5][10] = 7'd0;
        tilemap[5][29] = 7'd0;
        tilemap[19][29] = 7'd0;
        tilemap[19][10] = 7'd0;
        
        
        for (i=12; i<=27; i=i+1)
        begin
            tilemap[5][i] = 7'd1;
            tilemap[6][i] = 7'd13;
            tilemap[7][i] = 7'd2;
            tilemap[17][i] = 7'd1;
            tilemap[18][i] = 7'd13;
            tilemap[19][i] = 7'd2;
        end  
        
        for (j=7; j<=17; j=j+1)
        begin
            tilemap[j][10] = 7'd11;
            tilemap[j][11] = 7'd13;
            tilemap[j][12] = 7'd12;
            tilemap[j][27] = 7'd11;
            tilemap[j][28] = 7'd13;
            tilemap[j][29] = 7'd12;
        end 
        
        tilemap[5][11] = 7'd7;
        tilemap[5][10] = 7'd3;
        tilemap[6][10] = 7'd14;
        tilemap[6][11] = 7'd13;
        tilemap[7][12] = 7'd18;
        
        tilemap[6][29] = 7'd8;
        tilemap[5][29] = 7'd4;
        tilemap[5][28] = 7'd15;
        tilemap[6][28] = 7'd13;
        tilemap[7][27] = 7'd19;
        
        tilemap[19][28] = 7'd9;
        tilemap[19][29] = 7'd5;
        tilemap[18][29] = 7'd16;
        tilemap[18][28] = 7'd13;
        tilemap[17][27] = 7'd20;
        
        tilemap[18][10] = 7'd10;
        tilemap[19][10] = 7'd6;
        tilemap[19][11] = 7'd17;
        tilemap[18][11] = 7'd13;
        tilemap[17][12] = 7'd21;
        
        //start line
        tilemap[5][19] = 7'd22;
        tilemap[6][19] = 7'd23;
        tilemap[7][19] = 7'd24;
        tilemap[6][18] = 7'd25;
        
        //best score line
        tilemap[24][12] = 45;
        tilemap[24][13] = 32;
        tilemap[24][14] = 34;
        tilemap[24][15] = 29;
        tilemap[24][17] = 34;
        tilemap[24][18] = 46;
        tilemap[24][19] = 47;
        tilemap[24][20] = 48;
        tilemap[24][21] = 32;
        tilemap[24][22] = 33;
        
        //add trees
        tilemap[14][14] = 61;
        tilemap[14][15] = 62;
        tilemap[15][14] = 63;
        tilemap[15][15] = 64;
        
        tilemap[22][14] = 61;
        tilemap[22][15] = 62;
        tilemap[23][14] = 63;
        tilemap[23][15] = 64;
        
        tilemap[8][23] = 61;
        tilemap[8][24] = 62;
        tilemap[9][23] = 63;
        tilemap[9][24] = 64;
        
        tilemap[8][16] = 61;
        tilemap[8][17] = 62;
        tilemap[9][16] = 63;
        tilemap[9][17] = 64;
        
        //add tribunes
        tilemap[2][14] = 65;
        tilemap[2][15] = 66;
        tilemap[2][16] = 67;
        tilemap[2][17] = 68;
        tilemap[3][14] = 69;
        tilemap[3][15] = 70;
        tilemap[3][16] = 71;
        tilemap[3][17] = 72;
        
        tilemap[2][18] = 65;
        tilemap[2][19] = 66;
        tilemap[2][20] = 67;
        tilemap[2][21] = 68;
        tilemap[3][18] = 69;
        tilemap[3][19] = 70;
        tilemap[3][20] = 71;
        tilemap[3][21] = 72;
        
        tilemap[2][22] = 65;
        tilemap[2][23] = 66;
        tilemap[2][24] = 67;
        tilemap[2][25] = 68;
        tilemap[3][22] = 69;
        tilemap[3][23] = 70;
        tilemap[3][24] = 71;
        tilemap[3][25] = 72;
        
        //add rocks
        tilemap[22][9] = 73;
        tilemap[22][10] = 74;
        tilemap[23][9] = 75;
        tilemap[23][10] = 76;
        
        tilemap[21][22] = 73;
        tilemap[21][23] = 74;
        tilemap[22][22] = 75;
        tilemap[22][23] = 76;
        
        tilemap[17][32] = 73;
        tilemap[17][33] = 74;
        tilemap[18][32] = 75;
        tilemap[18][33] = 76;
        
        tilemap[21][7] = 77;
        tilemap[22][21] = 77;
        tilemap[21][24] = 77;
        tilemap[21][7] = 77;
        tilemap[6][31] = 77;
        tilemap[5][32] = 77;
        
        //add game name
        tilemap[2][4] = 29;
        tilemap[2][5] = 79;
        tilemap[2][6] = 48;
        tilemap[2][7] = 45;
        tilemap[2][8] = 47;
        
        tilemap[3][6] = 31;
        tilemap[3][7] = 47;
        tilemap[3][8] = 78;
        tilemap[3][9] = 32;
    end
    
    always_ff @(posedge clk) begin
        integer i, j;
        if (SW[0]) begin

            for (i=29; i<=36; i=i+1)
            begin
                tilemap[1][i] <= 7'd1;
                tilemap[2][i] <= 7'd13;
                tilemap[3][i] <= 7'd2;
            end
            
            for (i=3; i<=6; i=i+1)
            begin
                tilemap[i][36] <= 7'd11;
                tilemap[i][37] <= 7'd13;
                tilemap[i][38] <= 7'd12;
            end
            
            i=6;
            j=33;
            while (j>=31 && i<=7)
            begin
                tilemap[i][j] <= 7'd49;
                tilemap[i][j+1] <= 7'd50;
                tilemap[i+1][j] <= 7'd51;
                tilemap[i+1][j+1] <= 7'd13;
                tilemap[i+2][j] <= 7'd13;
                tilemap[i+2][j+1] <= 7'd52;
                tilemap[i+3][j] <= 7'd53;
                tilemap[i+3][j+1] <= 7'd54;
                i = i+1;
                j = j-2;
            end
        
            tilemap[5][27] <= 7'd20;
            tilemap[6][28] <= 7'd13;
            tilemap[6][29] <= 7'd16;
            tilemap[7][28] <= 7'd9;
            tilemap[7][29] <= 7'd5;
            
            tilemap[3][27] <= 7'd11;
            tilemap[4][27] <= 7'd11;
            tilemap[3][28] <= 7'd13;
            tilemap[4][28] <= 7'd13;
            tilemap[4][29] <= 7'd12;
            
            tilemap[3][29] <= 7'd18;
            tilemap[1][27] <= 7'd3;
            tilemap[1][28] <= 7'd7;
            tilemap[2][27] <= 7'd14;
            tilemap[2][28] <= 7'd13;
            
            tilemap[3][36] <= 7'd19;
            tilemap[2][37] <= 7'd13;
            tilemap[2][38] <= 7'd8;
            tilemap[1][37] <= 7'd15;
            tilemap[1][38] <= 7'd4;
            
            tilemap[6][36] <= 7'd20;
            tilemap[7][37] <= 7'd13;
            tilemap[7][38] <= 7'd16;
            tilemap[8][37] <= 7'd9;
            tilemap[8][38] <= 7'd5;
            
            tilemap[6][35] <= 7'd1;
            tilemap[7][35] <= 7'd13;
            tilemap[7][36] <= 7'd13;
            tilemap[8][35] <= 7'd2;
            tilemap[8][36] <= 7'd2;
            
            tilemap[8][30] <= 7'd1;
            tilemap[9][30] <= 7'd13;
            tilemap[10][30] <= 7'd2;
            
            tilemap[10][29] <= 7'd18;
            tilemap[8][27] <= 7'd3;
            tilemap[8][28] <= 7'd7;
            tilemap[9][27] <= 7'd14;
            tilemap[9][28] <= 7'd13;
            
            tilemap[5][28] <= 7'd13;
            tilemap[5][29] <= 7'd12;
            tilemap[8][29] <= 7'd1;
            tilemap[9][29] <= 7'd13;
            tilemap[7][27] <= 7'd2;
            
            // Remove garbage pixels
            for (i=0; i<=24; i=i+1)
            begin
                tilemap[i][0] <= 7'd0;
            end
        end
        else begin
            
            tilemap[6][29] <= 7'd8;
            tilemap[5][29] <= 7'd4;
            tilemap[5][28] <= 7'd15;
            tilemap[6][28] <= 7'd13;
            tilemap[7][27] <= 7'd19;
            
            for (i=29; i<=36; i=i+1)
            begin
                tilemap[1][i] <= 7'd0;
                tilemap[2][i] <= 7'd0;
                tilemap[3][i] <= 7'd0;
            end
            
            for (i=3; i<=6; i=i+1)
            begin
                tilemap[i][36] <= 7'd0;
                tilemap[i][37] <= 7'd0;
                tilemap[i][38] <= 7'd0;
            end
            
            i=6;
            j=33;
            while (j>=31 && i<=7)
            begin
                tilemap[i][j] <= 7'd0;
                tilemap[i][j+1] <= 7'd0;
                tilemap[i+1][j] <= 7'd0;
                tilemap[i+1][j+1] <= 7'd0;
                tilemap[i+2][j] <= 7'd0;
                tilemap[i+2][j+1] <= 7'd0;
                tilemap[i+3][j] <= 7'd0;
                tilemap[i+3][j+1] <= 7'd0;
                i = i+1;
                j = j-2;
            end
            
            tilemap[5][27] <= 7'd1;
            tilemap[6][28] <= 7'd13;
            tilemap[6][29] <= 7'd8;
            tilemap[7][28] <= 7'd13;
            tilemap[7][29] <= 7'd12;
            
            tilemap[3][27] <= 7'd0;
            tilemap[4][27] <= 7'd0;
            tilemap[3][28] <= 7'd0;
            tilemap[4][28] <= 7'd0;
            tilemap[4][29] <= 7'd0;
            
            tilemap[3][29] <= 7'd0;
            tilemap[1][27] <= 7'd0;
            tilemap[1][28] <= 7'd0;
            tilemap[2][27] <= 7'd0;
            tilemap[2][28] <= 7'd0;
            
            tilemap[3][36] <= 7'd0;
            tilemap[2][37] <= 7'd0;
            tilemap[2][38] <= 7'd0;
            tilemap[1][37] <= 7'd0;
            tilemap[1][38] <= 7'd0;
            
            tilemap[6][36] <= 7'd0;
            tilemap[7][37] <= 7'd0;
            tilemap[7][38] <= 7'd0;
            tilemap[8][37] <= 7'd0;
            tilemap[8][38] <= 7'd0;
            
            tilemap[6][35] <= 7'd0;
            tilemap[7][35] <= 7'd0;
            tilemap[7][36] <= 7'd0;
            tilemap[8][35] <= 7'd0;
            tilemap[8][36] <= 7'd0;
            
            tilemap[8][30] <= 7'd0;
            tilemap[9][30] <= 7'd0;
            tilemap[10][30] <= 7'd0;
            
            tilemap[10][29] <= 7'd12;
            tilemap[8][27] <= 7'd11;
            tilemap[8][28] <= 7'd13;
            tilemap[9][27] <= 7'd11;
            tilemap[9][28] <= 7'd13;
            
            tilemap[5][28] <= 7'd15;
            tilemap[5][29] <= 7'd4;
            tilemap[8][29] <= 7'd12;
            tilemap[9][29] <= 7'd12;
            tilemap[7][27] <= 7'd19;
        end
        
        if (SW[1]) begin

            for (i=14; i<=21; i=i+1)
            begin
                tilemap[i][35] <= 7'd11;
                tilemap[i][36] <= 7'd13;
                tilemap[i][37] <= 7'd12;
            end
            
            i=11;
            j=33;
            while (j>=31 && i<=12)
            begin
                tilemap[i][j] <= 7'd49;
                tilemap[i][j+1] <= 7'd50;
                tilemap[i+1][j] <= 7'd51;
                tilemap[i+1][j+1] <= 7'd13;
                tilemap[i+2][j] <= 7'd13;
                tilemap[i+2][j+1] <= 7'd52;
                tilemap[i+3][j] <= 7'd53;
                tilemap[i+3][j+1] <= 7'd54;
                i = i+1;
                j = j-2;
            end
            
            i=17;
            j=26;
            while (j<=32 && i<=20)
            begin
                tilemap[i][j] <= 7'd55;
                tilemap[i][j+1] <= 7'd56;
                tilemap[i+1][j] <= 7'd13;
                tilemap[i+1][j+1] <= 7'd58;
                tilemap[i+2][j] <= 7'd57;
                tilemap[i+2][j+1] <= 7'd13;
                tilemap[i+3][j] <= 7'd59;
                tilemap[i+3][j+1] <= 7'd60;
                i = i+1;
                j = j+2;
            end
            
            tilemap[14][27] <= 7'd10;
            tilemap[15][27] <= 7'd6;
            tilemap[14][28] <= 7'd13;
            tilemap[15][28] <= 7'd17;
            tilemap[14][29] <= 7'd13;
            tilemap[15][29] <= 7'd2;
            tilemap[13][29] <= 7'd21;
            
            tilemap[13][30] <= 7'd1;
            tilemap[14][30] <= 7'd13;
            tilemap[15][30] <= 7'd2;
            
            tilemap[11][35] <= 7'd1;
            tilemap[11][36] <= 7'd15;
            tilemap[11][37] <= 7'd4;
            tilemap[12][35] <= 7'd13;
            tilemap[12][36] <= 7'd13;
            tilemap[12][37] <= 7'd8;
            tilemap[13][35] <= 7'd19;
            tilemap[13][36] <= 7'd13;
            tilemap[13][37] <= 7'd12;
            
            tilemap[21][35] <= 7'd20;
            tilemap[22][35] <= 7'd13;
            tilemap[22][36] <= 7'd13;
            tilemap[22][37] <= 7'd16;
            tilemap[23][35] <= 7'd2;
            tilemap[23][36] <= 7'd9;
            tilemap[23][37] <= 7'd5;
            
            tilemap[21][34] <= 7'd1;
            tilemap[22][34] <= 7'd13;
            tilemap[23][34] <= 7'd2;
            
            tilemap[16][27] <= 7'd0;
            tilemap[16][28] <= 7'd0;
            tilemap[16][29] <= 7'd0;
            tilemap[17][28] <= 7'd0;
            tilemap[17][29] <= 7'd0;
            
            // Remove garbage pixels
            for (i=0; i<=24; i=i+1)
            begin
                tilemap[i][0] <= 7'd0;
            end
            
        end
        else begin
            
            for (i=14; i<=21; i=i+1)
            begin
                tilemap[i][35] <= 7'd0;
                tilemap[i][36] <= 7'd0;
                tilemap[i][37] <= 7'd0;
            end
            
            i=11;
            j=33;
            while (j>=31 && i<=12)
            begin
                tilemap[i][j] <= 7'd0;
                tilemap[i][j+1] <= 7'd0;
                tilemap[i+1][j] <= 7'd0;
                tilemap[i+1][j+1] <= 7'd0;
                tilemap[i+2][j] <= 7'd0;
                tilemap[i+2][j+1] <= 7'd0;
                tilemap[i+3][j] <= 7'd0;
                tilemap[i+3][j+1] <= 7'd0;
                i = i+1;
                j = j-2;
            end
            
            i=17;
            j=26;
            while (j<=32 && i<=20)
            begin
                tilemap[i][j] <= 7'd0;
                tilemap[i][j+1] <= 7'd0;
                tilemap[i+1][j] <= 7'd0;
                tilemap[i+1][j+1] <= 7'd0;
                tilemap[i+2][j] <= 7'd0;
                tilemap[i+2][j+1] <= 7'd0;
                tilemap[i+3][j] <= 7'd0;
                tilemap[i+3][j+1] <= 7'd0;
                i = i+1;
                j = j+2;
            end
            
            tilemap[17][26] <= 7'd1;
            tilemap[18][26] <= 7'd13;
            tilemap[19][26] <= 7'd2;
            tilemap[17][27] <= 7'd20;
            tilemap[18][27] <= 7'd13;
            tilemap[19][27] <= 7'd2;
            tilemap[18][28] <= 7'd13;
            tilemap[18][29] <= 7'd16;
            tilemap[19][28] <= 7'd9;
            tilemap[19][29] <= 7'd5;
            
            tilemap[14][27] <= 7'd11;
            tilemap[15][27] <= 7'd11;
            tilemap[14][28] <= 7'd13;
            tilemap[15][28] <= 7'd13;
            tilemap[14][29] <= 7'd12;
            tilemap[15][29] <= 7'd12;
            tilemap[13][29] <= 7'd12;
            
            tilemap[13][30] <= 7'd0;
            tilemap[14][30] <= 7'd0;
            tilemap[15][30] <= 7'd0;
            
            tilemap[11][35] <= 7'd0;
            tilemap[11][36] <= 7'd0;
            tilemap[11][37] <= 7'd0;
            tilemap[12][35] <= 7'd0;
            tilemap[12][36] <= 7'd0;
            tilemap[12][37] <= 7'd0;
            tilemap[13][35] <= 7'd0;
            tilemap[13][36] <= 7'd0;
            tilemap[13][37] <= 7'd0;
            
            tilemap[21][35] <= 7'd0;
            tilemap[22][35] <= 7'd0;
            tilemap[22][36] <= 7'd0;
            tilemap[22][37] <= 7'd0;
            tilemap[23][35] <= 7'd0;
            tilemap[23][36] <= 7'd0;
            tilemap[23][37] <= 7'd0;
            
            tilemap[21][34] <= 7'd0;
            tilemap[22][34] <= 7'd0;
            tilemap[23][34] <= 7'd0;
            
            tilemap[16][27] <= 7'd11;
            tilemap[16][28] <= 7'd13;
            tilemap[16][29] <= 7'd12;
            tilemap[17][28] <= 7'd13;
            tilemap[17][29] <= 7'd12;
            
        end
        
        if (SW[2]) begin
 
            for (j=3; j<=12; j=j+1)
            begin
                tilemap[5][j] <= 7'd1;
                tilemap[6][j] <= 7'd13;
                tilemap[7][j] <= 7'd2;
                tilemap[17][j] <= 7'd1;
                tilemap[18][j] <= 7'd13;
                tilemap[19][j] <= 7'd2;
            end
            
            tilemap[8][10] <= 7'd0;
            tilemap[8][11] <= 7'd0;
            tilemap[8][12] <= 7'd0;
            tilemap[16][10] <= 7'd0;
            tilemap[16][11] <= 7'd0;
            tilemap[16][12] <= 7'd0;
            
            for (j=3; j<=10; j=j+1)
            begin
                tilemap[9][j] <= 7'd1;
                tilemap[10][j] <= 7'd13;
                tilemap[11][j] <= 7'd2;
                tilemap[13][j] <= 7'd1;
                tilemap[14][j] <= 7'd13;
                tilemap[15][j] <= 7'd2;
            end
           
            for (i=7; i<=9; i=i+1)
            begin
                tilemap[i][1] <= 7'd11;
                tilemap[i][2] <= 7'd13;
                tilemap[i][3] <= 7'd12;
            end
            
            for (i=15; i<=17; i=i+1)
            begin
                tilemap[i][1] <= 7'd11;
                tilemap[i][2] <= 7'd13;
                tilemap[i][3] <= 7'd12;
            end
            
            tilemap[17][3] <= 7'd21;
            tilemap[18][1] <= 7'd10;
            tilemap[18][2] <= 7'd13;
            tilemap[19][1] <= 7'd6;    
            tilemap[19][2] <= 7'd17;      
            
            tilemap[13][10] <= 7'd20;
            tilemap[14][11] <= 7'd13;
            tilemap[14][12] <= 7'd16;
            tilemap[15][11] <= 7'd9;    
            tilemap[15][12] <= 7'd5; 
            
            tilemap[13][1] <= 7'd3;
            tilemap[13][2] <= 7'd7;
            tilemap[14][1] <= 7'd14;
            tilemap[14][2] <= 7'd13;    
            tilemap[15][3] <= 7'd18; 
            
            tilemap[9][11] <= 7'd15;
            tilemap[9][12] <= 7'd4;
            tilemap[10][11] <= 7'd13;
            tilemap[10][12] <= 7'd8;    
            tilemap[11][10] <= 7'd19; 
            
            tilemap[10][1] <= 7'd10;
            tilemap[10][2] <= 7'd13;
            tilemap[11][1] <= 7'd6;
            tilemap[11][2] <= 7'd17;    
            tilemap[9][3] <= 7'd21;
            
            tilemap[5][1] <= 7'd3;
            tilemap[5][2] <= 7'd7;
            tilemap[6][1] <= 7'd14;
            tilemap[6][2] <= 7'd13;    
            tilemap[7][3] <= 7'd18; 
            
            // Remove garbage pixels
            for (i=0; i<=24; i=i+1)
            begin                                                                                                                                                                   
                tilemap[i][0] <= 7'd0;
            end

        end
        else begin
            
            for (j=3; j<=12; j=j+1)
            begin
                tilemap[5][j] <= 7'd0;
                tilemap[6][j] <= 7'd0;
                tilemap[7][j] <= 7'd0;
                tilemap[17][j] <= 7'd0;
                tilemap[18][j] <= 7'd0;
                tilemap[19][j] <= 7'd0;
            end
            
            for (j=3; j<=10; j=j+1)
            begin
                tilemap[9][j] <= 7'd0;
                tilemap[10][j] <= 7'd0;
                tilemap[11][j] <= 7'd0;
                tilemap[13][j] <= 7'd0;
                tilemap[14][j] <= 7'd0;
                tilemap[15][j] <= 7'd0;
            end
           
            for (i=7; i<=9; i=i+1)
            begin
                tilemap[i][1] <= 7'd0;
                tilemap[i][2] <= 7'd0;
                tilemap[i][3] <= 7'd0;
            end
            
            for (i=15; i<=17; i=i+1)
            begin
                tilemap[i][1] <= 7'd0;
                tilemap[i][2] <= 7'd0;
                tilemap[i][3] <= 7'd0;
            end
            
            tilemap[17][3] <= 7'd0;
            tilemap[18][1] <= 7'd0;
            tilemap[18][2] <= 7'd0;
            tilemap[19][1] <= 7'd0;    
            tilemap[19][2] <= 7'd0;      
            
            tilemap[13][10] <= 7'd0;
            tilemap[14][11] <= 7'd0;
            tilemap[14][12] <= 7'd0;
            tilemap[15][11] <= 7'd0;    
            tilemap[15][12] <= 7'd0; 
            
            tilemap[13][1] <= 7'd0;
            tilemap[13][2] <= 7'd0;
            tilemap[14][1] <= 7'd0;
            tilemap[14][2] <= 7'd0;    
            tilemap[15][3] <= 7'd0; 
            
            tilemap[9][11] <= 7'd0;
            tilemap[9][12] <= 7'd0;
            tilemap[10][11] <= 7'd0;
            tilemap[10][12] <= 7'd0;    
            tilemap[11][10] <= 7'd0; 
            
            tilemap[10][1] <= 7'd0;
            tilemap[10][2] <= 7'd0;
            tilemap[11][1] <= 7'd0;
            tilemap[11][2] <= 7'd0;    
            tilemap[9][3] <= 7'd0;
            
            tilemap[5][1] <= 7'd0;
            tilemap[5][2] <= 7'd0;
            tilemap[6][1] <= 7'd0;
            tilemap[6][2] <= 7'd0;    
            tilemap[7][3] <= 7'd0;
            
            for (i=7; i<=17; i=i+1)
            begin
                tilemap[i][10] <= 7'd11;
                tilemap[i][11] <= 7'd13;
                tilemap[i][12] <= 7'd12;
            end
            
            tilemap[17][10] <= 7'd11;
            tilemap[17][11] <= 7'd13;
            tilemap[17][12] <= 7'd21;
            tilemap[18][10] <= 7'd10;    
            tilemap[18][11] <= 7'd13;
            tilemap[18][12] <= 7'd13;
            tilemap[19][10] <= 7'd6;
            tilemap[19][11] <= 7'd17;    
            tilemap[19][12] <= 7'd2; 
            
            tilemap[5][10] <= 7'd3;
            tilemap[5][11] <= 7'd7;
            tilemap[5][12] <= 7'd1;
            tilemap[6][10] <= 7'd14;    
            tilemap[6][11] <= 7'd13;
            tilemap[6][12] <= 7'd13;
            tilemap[7][10] <= 7'd11;
            tilemap[7][11] <= 7'd13;    
            tilemap[7][12] <= 7'd18;
              
        end
    end
    
    //detect switch changes
    logic sw0_prev, sw1_prev, sw2_prev;
    logic sw_change;  
    
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            sw0_prev <= 1'b0;
            sw1_prev <= 1'b0;
            sw2_prev <= 1'b0;
        end else begin
            sw0_prev <= SW[0];
            sw1_prev <= SW[1];
            sw2_prev <= SW[2];
        end
    end
    
    assign sw_change = (SW[0] ^ sw0_prev) | (SW[1] ^ sw1_prev) | (SW[2] ^ sw2_prev);

    logic sw_toggle;

    always_ff @(posedge clk or negedge rst) begin
        if (!rst)
            sw_toggle <= 1'b0;
        else if (sw_change) begin  // your existing edge detector
            sw_toggle <= ~sw_toggle;
            /*tilemap[24][23] <= 0;
            tilemap[24][24] <= 0;
            tilemap[24][25] <= 0;
            tilemap[24][26] <= 0;
            tilemap[24][27] <= 0;*/
        end
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
    //                  .in_pos_y(y_pos+100), .in_width_y(100), .draw_y(curr_y),
    //                  .bg_color({pix_wire_r_1, pix_wire_g_1, pix_wire_b_1}), 
    //                  .in_pix_r(4'b0000), .in_pix_g(4'b0000), .in_pix_b(4'b1111),
    //                  .o_pix_r(pix_wire_r_2), .o_pix_g(pix_wire_g_2), .o_pix_b(pix_wire_b_2));                
        
    logic [10:0] x_pos;
    logic [9:0] y_pos;
    logic accel_flag;

    assign accel_flag = in_space_key || in_center;
    
    moving_car_states green_car(.clk(pixclk), .rst(rst), .curr_x(curr_x), .curr_y(curr_y), .swtch(sw_toggle), .clr_swtch(SW[14]), .accel_flag(accel_flag), .bg_color({pix_wire_r_2, pix_wire_g_2, pix_wire_b_2}), .in_up(in_up), .in_down(in_down), .in_left(in_left), .in_right(in_right), .tilemap(tilemap), .o_pix_r(pix_wire_r_1), .o_pix_g(pix_wire_g_1), .o_pix_b(pix_wire_b_1), .y_pos(y_pos), .x_pos(x_pos));
    
    
    // Calculate score
    logic [3:0] ones_temp, tens_temp, hundreds_temp, thousands_temp;
    logic [3:0] ones_final, tens_final, hundreds_final, thousands_final;
    logic [3:0] prev_ones, prev_tens, prev_hundreds, prev_thousands;
    logic crossed_line;
    logic [6:0] lap_time;
    
    score lap_timer (
        .clk(clk),
        .rst(rst),
        .x_pos(x_pos - 26),
        .y_pos(y_pos - 15),
        .swtch(sw_change),
        .a(CA), .b(CB), .c(CC), .d(CD), .e(CE), .f(CF), .g(CG),
        .dp(DP),
        .an(AN),
        .crossed_line(crossed_line),
        .lap_time(lap_time),
        .ones(ones_temp),
        .tens(tens_temp),
        .hundreds(hundreds_temp), 
        .thousands(thousands_temp),
        .prev_ones(prev_ones),
        .prev_tens(prev_tens),
        .prev_hundreds(prev_hundreds), 
        .prev_thousands(prev_thousands)
    );
    
    logic crossed_line2;
    always @(posedge clk or negedge rst) begin
        if (~rst) begin
            tilemap[12][13] <= 0;   
            tilemap[12][14] <= 0;    
            tilemap[12][15] <= 0;   
            tilemap[12][17] <= 0;   
            tilemap[12][18] <= 0;  
            tilemap[12][19] <= 0;  
            tilemap[12][20] <= 0;   
            tilemap[12][21] <= 0;  
            tilemap[12][23] <= 0;   
            tilemap[12][24] <= 0; 
            tilemap[12][25] <= 0; 
            tilemap[12][26] <= 0; 
            
            tilemap[24][12] <= 45;
            tilemap[24][13] <= 32;
            tilemap[24][14] <= 34;
            tilemap[24][15] <= 29;
            tilemap[24][17] <= 34;
            tilemap[24][18] <= 46;
            tilemap[24][19] <= 47;
            tilemap[24][20] <= 48;
            tilemap[24][21] <= 32;
            tilemap[24][22] <= 33;
            tilemap[24][24] <= 0;
            tilemap[24][25] <= 0;
            tilemap[24][26] <= 0;
            tilemap[24][27] <= 0;
            
            crossed_line2 <= 0;
        end
        // When the line is crossed, show letters
        else if (crossed_line2) begin
            tilemap[12][13] <= 26;   // 'L'
            tilemap[12][14] <= 27;   // 'A'
            tilemap[12][15] <= 28;   // 'P'
            tilemap[12][17] <= 29;   // 'T'
            tilemap[12][18] <= 30;   // 'I'
            tilemap[12][19] <= 31;   // 'M'
            tilemap[12][20] <= 32;   // 'E'
            tilemap[12][21] <= 33;   // ':'
            if (thousands_final==0 && hundreds_final==0 && tens_final==0)
            begin
                tilemap[12][22] <= 0;  
                tilemap[12][23] <= 0;                 
                tilemap[12][24] <= 0;
            end
            else if (thousands_final==0 && hundreds_final==0) begin
                tilemap[12][22] <= 0;  
                tilemap[12][23] <= 0;                 
                tilemap[12][24] <= 35 + tens_final;  
            end
            else if (thousands_final==0) begin
                tilemap[12][22] <= 0;  
                tilemap[12][23] <= 35 + hundreds_final;                 
                tilemap[12][24] <= 35 + tens_final;  
            end
            else begin
                tilemap[12][22] <= 35 + thousands_final;  
                tilemap[12][23] <= 35 + hundreds_final;                 
                tilemap[12][24] <= 35 + tens_final;  
            end    
            tilemap[12][25] <= 35 + ones_final;     
            tilemap[12][26] <= 34;   // 'S'    
            
            
            if (prev_thousands==0 && prev_hundreds==0 && prev_tens==0) begin
                tilemap[24][23] <= 0;
                tilemap[24][24] <= 0;
                tilemap[24][25] <= 0;
            end
            else if (prev_thousands==0 && prev_hundreds==0) begin
                tilemap[24][23] <= 0;
                tilemap[24][24] <= 0;
                tilemap[24][25] <= 35 + prev_tens;
            end
            else if (prev_thousands==0) begin
                tilemap[24][23] <= 0;
                tilemap[24][24] <= 35 + prev_hundreds;
                tilemap[24][25] <= 35 + prev_tens;
            end
            else begin
                tilemap[24][23] <= 35 + prev_thousands;
                tilemap[24][24] <= 35 + prev_hundreds;
                tilemap[24][25] <= 35 + prev_tens;
            end
            tilemap[24][26] <= 35 + prev_ones;
            tilemap[24][27] <= 34;  
        end
    
        // After 3 seconds, clear the tiles
        else if (lap_time>3) begin
            tilemap[12][13] <= 0;   
            tilemap[12][14] <= 0;    
            tilemap[12][15] <= 0;   
            tilemap[12][17] <= 0;   
            tilemap[12][18] <= 0;  
            tilemap[12][19] <= 0;  
            tilemap[12][20] <= 0;   
            tilemap[12][21] <= 0;  
            tilemap[12][22] <= 0;  
            tilemap[12][23] <= 0;   
            tilemap[12][24] <= 0; 
            tilemap[12][25] <= 0; 
            tilemap[12][26] <= 0;  
        end
        
        crossed_line2 <= crossed_line;
        ones_final <= ones_temp;
        tens_final <= tens_temp;
        hundreds_final <= hundreds_temp;
        thousands_final <= thousands_temp;
        
    end
    
    vga_out vga (.clk(pixclk), .pix_in_r(pix_wire_r_1), .pix_in_g(pix_wire_g_1), .pix_in_b(pix_wire_b_1),.pix_r(pix_r), .pix_g(pix_g), .pix_b(pix_b), .hsync(hsync), .vsync(vsync), .curr_x(curr_x), .curr_y(curr_y));


    localparam ROM_DEPTH = 39526;
    localparam Win_sound_ROM_DEPTH = 8748;
    localparam FIFO_WIDTH = 32;
    
    // --- Signals ---
    logic [FIFO_WIDTH-1:0] current_audio_data;
    logic audio_req; 
    
    // --- Clock Divider ---
    // Remove old clk_cnt, audio_clk logic since we are moving to system clock.
    // We retain this only if the driver needs an enable pulse, but we will use sample_tick.

    // --- STATIC ARRAY (Block RAM) ---
    // (* rom_style = "block" *) forces Vivado to use BRAM instead of LUTs.
    (* rom_style = "block" *)
    logic [FIFO_WIDTH-1:0] music_storage [0:ROM_DEPTH-1];
    (* rom_style = "block" *)
    logic [FIFO_WIDTH-1:0] win_sound_storage [0:Win_sound_ROM_DEPTH-1];
    
    // --- Audio Control Logic ---
    logic [15:0] music_ptr = 0;
    logic [15:0] win_ptr = 0;
    logic win_active = 0;
    
    // Initialize Memory from file
    initial begin
        $readmemh("music_data.mem", music_storage);
        $readmemh("win_sound.mem", win_sound_storage);
    end

    // Audio Output Logic (Mixer)
    logic [FIFO_WIDTH-1:0] music_sample_reg;
    logic [FIFO_WIDTH-1:0] win_sample_reg;
    
    // --- Audio Trigger Cross-Domain Crossing ---
    // Fast Domain Trigger Latch
    reg win_sound_req_toggle = 0;
    reg sw15_r = 0, sw15_rr = 0; // Debounce/Edge
    
    always_ff @(posedge clk) begin
        // Edge detect SW[15] in fast domain
        sw15_r <= SW[15];
        sw15_rr <= sw15_r; 
        
        // Trigger on Crossed Line OR SW[15] Rising Edge
        if (crossed_line || (sw15_r && !sw15_rr))
            win_sound_req_toggle <= ~win_sound_req_toggle; // Toggle to signal event
    end

    // Slow Domain Edge Detect
    reg win_sound_req_sync = 0;
    reg win_sound_req_prev = 0;
    
    // --- Sample Rate Generator (8kHz) ---
    // System Clock (100MHz) / 8000Hz = 12500 ticks
    logic [13:0] sample_cnt = 0;
    logic sample_tick;
    
    always_ff @(posedge clk) begin
        if (sample_cnt == 12499) begin
            sample_cnt <= 0;
            sample_tick <= 1'b1;
        end else begin
            sample_cnt <= sample_cnt + 1;
            sample_tick <= 1'b0;
        end
    end

    // Playback Logic (Driven by System Clock, Gated by sample_tick)
    always_ff @(posedge clk) begin
        if (~rst) begin
            music_ptr <= 0;
            win_ptr <= 0;
            win_active <= 0;
            music_sample_reg <= 8'd128; // Default Silence
            win_sample_reg <= 8'd128;   // Default Silence
            win_sound_req_sync <= 0;
            win_sound_req_prev <= 0;
        end else begin
            // 1. Trigger Check (can happen anytime)
            win_sound_req_sync <= win_sound_req_toggle;
            win_sound_req_prev <= win_sound_req_sync;
            
            if (win_sound_req_sync != win_sound_req_prev) begin
                win_active <= 1'b1;
                win_ptr <= 0;
            end

            // 2. Playback Update (Only at 8kHz)
            if (sample_tick) begin
                // Update Music Pointer
                music_sample_reg <= music_storage[music_ptr];
                if (music_ptr == ROM_DEPTH - 1) 
                    music_ptr <= 0; 
                else 
                    music_ptr <= music_ptr + 1;

                // Update Win Sound Pointer
                if (win_active) begin
                    win_sample_reg <= win_sound_storage[win_ptr];
                    if (win_ptr == Win_sound_ROM_DEPTH - 1) begin
                        win_active <= 1'b0; // Stop
                        win_ptr <= 0;
                    end else begin
                        win_ptr <= win_ptr + 1;
                    end
                end else begin
                    win_sample_reg <= 8'd128; // Silence
                end
            end
        end
    end

    // --- Audio Mixer (Combinatorial) ---
    // Average Mixing: (A + B) / 2
    logic [8:0] mixed_sample; 
    
    always_comb begin
        // Average Mixing prevents overflow and clipping (whistle sound)
        mixed_sample = (music_sample_reg[7:0] + win_sample_reg[7:0]) >> 1;
        
        current_audio_data = {24'd0, mixed_sample[7:0]};
    end

    // The driver is never empty
    logic fifo_always_has_data;
    assign fifo_always_has_data = 1'b0; 

    // --- Audio Driver Instance ---
    // FIXED: Clocked at 100MHz (clk) instead of 2MHz.
    //        This pushes PWM carrier to ~390kHz (ultrasonic), removing the whistle.
    fifo2audpwm #(
        .DATA_WIDTH(8),
        .FIFO_DATA_WIDTH(FIFO_WIDTH)
    ) u_audio_driver (
        .clk(clk),       // Use System Clock (100MHz)
        .aud_pwm(aud_pwm),
        .aud_en(aud_sd),       
        .fifo_rd_data(current_audio_data),
        .fifo_rd_en(audio_req), 
        .fifo_empty(fifo_always_has_data)
    );

endmodule