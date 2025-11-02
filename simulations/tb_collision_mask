`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2025 11:13:39 AM
// Design Name: 
// Module Name: tb_collision_mask
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


module tb_collision_mask;

    // Parameters
    localparam TILE_W = 32;
    localparam TILE_H = 32;
    localparam NUM_TILES_X = 40;
    localparam NUM_TILES_Y = 25;
    localparam SCREEN_W = TILE_W * NUM_TILES_X; // 1280
    localparam SCREEN_H = TILE_H * NUM_TILES_Y; // 800

    // DUT Inputs
    logic clk = 0;
    logic [10:0] curr_x;
    logic [9:0]  curr_y;
    logic [4:0]  tilemap [0:NUM_TILES_Y-1][0:NUM_TILES_X-1];
    logic walkable;

    // Clock generation (optional, if your module uses it)
    always #5 clk = ~clk;

    // Instantiate DUT
    collision_mask dut (
        .clk(clk),
        .curr_x(curr_x),
        .curr_y(curr_y),
        .tilemap(tilemap),
        .walkable(walkable)
    );

    // Initialize tilemap
    initial begin
        integer i, j;
        for (i=0; i<NUM_TILES_Y; i=i+1) begin
            for (j=0; j<NUM_TILES_X; j=j+1) begin
                tilemap[i][j] = 5'd0; // default = grass
            end
        end

        // (your map setup exactly as you wrote it)
        // ✅ keep your custom tile setup here
        tilemap[5][10] = 5'd0;
        tilemap[5][29] = 5'd0;
        tilemap[19][29] = 5'd0;
        tilemap[19][10] = 5'd0;

        for (i=12; i<=27; i=i+1) begin
            tilemap[5][i] = 5'd1;
            tilemap[6][i] = 5'd13;
            tilemap[7][i] = 5'd2;
            tilemap[17][i] = 5'd1;
            tilemap[18][i] = 5'd13;
            tilemap[19][i] = 5'd2;
        end  

        for (j=7; j<=17; j=j+1) begin
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
    end

    // File output
    integer f;
    initial begin
        f = $fopen("collision_mask_output.txt", "w");
        if (!f) begin
            $display("ERROR: could not open file!");
            $finish;
        end

        // Sweep full screen (1280×800)
        for (curr_y = 0; curr_y < SCREEN_H; curr_y++) begin
            for (curr_x = 0; curr_x < SCREEN_W; curr_x++) begin
                #1; // let the combinational logic settle
                $fwrite(f, "%0d", walkable);
            end
            $fwrite(f, "\n");
        end

        $fclose(f);
        $display("✅ Simulation done. Output saved to collision_mask_output.txt");
        $finish;
    end

endmodule
