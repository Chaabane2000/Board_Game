`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2025 06:58:17 PM
// Design Name: 
// Module Name: tb_background
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

module tb_background;

    // Parameters
    parameter TILE_WIDTH  = 32;
    parameter TILE_HEIGHT = 32;
    parameter ADDR_TILES_WIDTH_SIZE = 5; //ceil(log2(TILE_WIDTH))
    parameter ADDR_TILES_HEIGHT_SIZE = 5; //ceil(log2(TILE_HEIGHT))
    parameter NUM_TILES_X = 40;
    parameter NUM_TILES_Y = 25;
    parameter ADDR_TILES_X_SIZE = 6; //ceil(log2(NUM_TILES_X))
    parameter ADDR_TILES_Y_SIZE = 5; //ceil(log2(NUM_TILES_Y))
    parameter COLOR_WIDTH = 12;
    parameter TILE_IDX_WIDTH = 5;
    parameter ADDR_WIDTH = 10; // ceil(log2(TILE_WIDTH*TILE_HEIGHT))

    // Signals
    logic clk, rst;
    logic [10:0] curr_x;
    logic [9:0]  curr_y;
    logic [3:0]  o_pix_r, o_pix_g, o_pix_b;
    logic [COLOR_WIDTH-1:0] bg_color;

    // Tilemap
    logic [4:0] tilemap [0:NUM_TILES_Y-1][0:NUM_TILES_X-1];

    integer i, j;

    // Clock generation (~86 MHz)
    initial clk = 0;
    always #5.81 clk = ~clk;

    // Initialize tilemap
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

    background dut (
        .clk(clk),
        .rst(rst),
        .curr_x(curr_x),
        .curr_y(curr_y),
        .tilemap(tilemap),
        .bg_color(12'h000),  // black background
        .o_pix_r(o_pix_r),
        .o_pix_g(o_pix_g),
        .o_pix_b(o_pix_b)
    );
    
    integer vga_file;

    // Initialize signals
    initial begin
        vga_file = $fopen("vga_output.txt", "w");
        
        rst = 0;
        curr_x = 0;
        curr_y = 0;
        bg_color = 12'h000; // black
        #20 rst = 1;

        // Sweep through the screen pixels
        for (curr_y = 0; curr_y < TILE_HEIGHT*NUM_TILES_Y; curr_y = curr_y + 1) begin
            for (curr_x = 0; curr_x < TILE_WIDTH*NUM_TILES_X; curr_x = curr_x + 1) begin
                #12; // wait one clock cycle (approx)
                $fflush(vga_file);
                $fwrite(vga_file, "%0d %0d %0d %0d %0d\n",
curr_x, curr_y, o_pix_r, o_pix_g, o_pix_b);
            end
        end

        $fclose(vga_file);
        $finish;
    end

    



endmodule
