`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2025 06:15:16 PM
// Design Name: 
// Module Name: background
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



module background #(
    parameter TILE_WIDTH  = 32,
    parameter TILE_HEIGHT = 32,
    parameter ADDR_TILES_WIDTH_SIZE = 5, //ceil(log2(TILE_WIDTH))
    parameter ADDR_TILES_HEIGHT_SIZE = 5, //ceil(log2(TILE_HEIGHT))
    parameter NUM_TILES_X = 40,
    parameter NUM_TILES_Y = 25,
    parameter ADDR_TILES_X_SIZE = 6, //ceil(log2(NUM_TILES_X))
    parameter ADDR_TILES_Y_SIZE = 5, //ceil(log2(NUM_TILES_Y))
    parameter COLOR_WIDTH = 12,
    parameter TILE_IDX_WIDTH = 5,
    parameter ADDR_WIDTH = 10 // ceil(log2(TILE_WIDTH*TILE_HEIGHT))
)(
    input  logic                        clk,
    input  logic                        rst,
    input  logic [10:0]                 curr_x, 
    input  logic [9:0]                  curr_y,  
    input  logic [TILE_IDX_WIDTH-1:0]   tilemap [0:NUM_TILES_Y-1][0:NUM_TILES_X-1],
    input  logic [COLOR_WIDTH-1:0]      bg_color,
    output logic [3:0]                  o_pix_r,
    output logic [3:0]                  o_pix_g,
    output logic [3:0]                  o_pix_b
);

    // Pipeline stage 0 registers
    logic [ADDR_TILES_X_SIZE-1:0] stage0_tile_x;
    logic [ADDR_TILES_Y_SIZE-1:0] stage0_tile_y;
    logic [ADDR_TILES_WIDTH_SIZE-1:0] stage0_x_in_tile;
    logic [ADDR_TILES_HEIGHT_SIZE-1:0] stage0_y_in_tile;
    logic [TILE_IDX_WIDTH-1:0] stage0_tile_id;

    // Pipeline stage 1 registers
    logic [ADDR_WIDTH-1:0] stage1_addr;
    logic [ADDR_WIDTH-1:0] stage1_addr_90;
    logic [ADDR_WIDTH-1:0] stage1_addr_180;
    logic [ADDR_WIDTH-1:0] stage1_addr_270;
    logic [TILE_IDX_WIDTH-1:0] stage1_tile_id;

    // Pipeline stage 2 registers
    logic [TILE_IDX_WIDTH-1:0] stage2_tile_id;

    // Pipeline stage 3 registers
    logic [COLOR_WIDTH-1:0] stage3_pixel;

    // Combinational calculations for stage 0
    logic [ADDR_TILES_X_SIZE-1:0] tile_x_comb;
    logic [ADDR_TILES_Y_SIZE-1:0] tile_y_comb;
    logic [ADDR_TILES_WIDTH_SIZE-1:0] x_in_tile_comb;
    logic [ADDR_TILES_HEIGHT_SIZE-1:0] y_in_tile_comb;
    logic [TILE_IDX_WIDTH-1:0] tile_id_comb;

    assign tile_x_comb = curr_x / TILE_WIDTH;
    assign tile_y_comb = curr_y / TILE_HEIGHT;
    assign x_in_tile_comb = curr_x % TILE_WIDTH;
    assign y_in_tile_comb = curr_y % TILE_HEIGHT;
    assign tile_id_comb = tilemap[tile_y_comb][tile_x_comb];

    // Stage 0: Register coordinate calculations and tile ID
    always_ff @(posedge clk) begin
        if (~rst) begin
            stage0_tile_x <= '0;
            stage0_tile_y <= '0;
            stage0_x_in_tile <= '0;
            stage0_y_in_tile <= '0;
            stage0_tile_id <= '0;
        end else begin
            stage0_tile_x <= tile_x_comb;
            stage0_tile_y <= tile_y_comb;
            stage0_x_in_tile <= x_in_tile_comb;
            stage0_y_in_tile <= y_in_tile_comb;
            stage0_tile_id <= tile_id_comb;
        end
    end

    // Combinational calculations for stage 1 (address calculations)
    logic [ADDR_WIDTH-1:0] addr_comb;
    logic [ADDR_WIDTH-1:0] addr_90_comb;
    logic [ADDR_WIDTH-1:0] addr_180_comb;
    logic [ADDR_WIDTH-1:0] addr_270_comb;

    // Use shifts instead of multiplication (TILE_WIDTH = 32 = 2^5)
    localparam TILE_WIDTH_SHIFT = 5;
    assign addr_comb = (stage0_y_in_tile << TILE_WIDTH_SHIFT) + stage0_x_in_tile;
    assign addr_90_comb = ((TILE_WIDTH - 1 - stage0_x_in_tile) << TILE_WIDTH_SHIFT) + stage0_y_in_tile;
    assign addr_180_comb = ((TILE_HEIGHT - 1 - stage0_y_in_tile) << TILE_WIDTH_SHIFT) + (TILE_WIDTH - 1 - stage0_x_in_tile);
    assign addr_270_comb = (stage0_x_in_tile << TILE_WIDTH_SHIFT) + (TILE_HEIGHT - 1 - stage0_y_in_tile);

    // Stage 1: Register address calculations
    always_ff @(posedge clk) begin
        if (~rst) begin
            stage1_addr <= '0;
            stage1_addr_90 <= '0;
            stage1_addr_180 <= '0;
            stage1_addr_270 <= '0;
            stage1_tile_id <= '0;
        end else begin
            stage1_addr <= addr_comb;
            stage1_addr_90 <= addr_90_comb;
            stage1_addr_180 <= addr_180_comb;
            stage1_addr_270 <= addr_270_comb;
            stage1_tile_id <= stage0_tile_id;
        end
    end

    // BRAM outputs
    logic [COLOR_WIDTH-1:0] bram_grass_data;
    logic [COLOR_WIDTH-1:0] bram_road_data1, bram_road_data1_180;
    logic [COLOR_WIDTH-1:0] bram_road_data2, bram_road_data2_90, bram_road_data2_180, bram_road_data2_270;
    logic [COLOR_WIDTH-1:0] bram_road_data3, bram_road_data3_90, bram_road_data3_180, bram_road_data3_270;
    logic [COLOR_WIDTH-1:0] bram_road_data4, bram_road_data4_180;
    logic [COLOR_WIDTH-1:0] bram_road_data5;
    logic [COLOR_WIDTH-1:0] bram_road_data6, bram_road_data6_90, bram_road_data6_180, bram_road_data6_270;
    logic [COLOR_WIDTH-1:0] bram_road_data7, bram_road_data7_90, bram_road_data7_180, bram_road_data7_270;

    // Instantiate tile BRAMs using stage1 addresses
    grass gr ( .clka(clk), .addra(stage1_addr), .douta(bram_grass_data) );
    road1  r1  ( .clka(clk), .addra(stage1_addr), .douta(bram_road_data1) );
    road1  r1_180  ( .clka(clk), .addra(stage1_addr_180), .douta(bram_road_data1_180) );
    road2  r2  ( .clka(clk), .addra(stage1_addr), .douta(bram_road_data2) );
    road2  r2_90  ( .clka(clk), .addra(stage1_addr_90), .douta(bram_road_data2_90) );
    road2  r2_180  ( .clka(clk), .addra(stage1_addr_180), .douta(bram_road_data2_180) );
    road2  r2_270  ( .clka(clk), .addra(stage1_addr_270), .douta(bram_road_data2_270) );
    road3  r3  ( .clka(clk), .addra(stage1_addr), .douta(bram_road_data3) );
    road3  r3_90  ( .clka(clk), .addra(stage1_addr_90), .douta(bram_road_data3_90) );
    road3  r3_180  ( .clka(clk), .addra(stage1_addr_180), .douta(bram_road_data3_180) );
    road3  r3_270  ( .clka(clk), .addra(stage1_addr_270), .douta(bram_road_data3_270) );
    road4  r4  ( .clka(clk), .addra(stage1_addr), .douta(bram_road_data4) );
    road4  r4_180  ( .clka(clk), .addra(stage1_addr_180), .douta(bram_road_data4_180) );
    road5  r5  ( .clka(clk), .addra(stage1_addr), .douta(bram_road_data5) );
    road6  r6  ( .clka(clk), .addra(stage1_addr), .douta(bram_road_data6) );
    road6  r6_90  ( .clka(clk), .addra(stage1_addr_90), .douta(bram_road_data6_90) );
    road6  r6_180  ( .clka(clk), .addra(stage1_addr_180), .douta(bram_road_data6_180) );
    road6  r6_270  ( .clka(clk), .addra(stage1_addr_270), .douta(bram_road_data6_270) );
    road7  r7  ( .clka(clk), .addra(stage1_addr), .douta(bram_road_data7) );
    road7  r7_90  ( .clka(clk), .addra(stage1_addr_90), .douta(bram_road_data7_90) );
    road7  r7_180  ( .clka(clk), .addra(stage1_addr_180), .douta(bram_road_data7_180) );
    road7  r7_270  ( .clka(clk), .addra(stage1_addr_270), .douta(bram_road_data7_270) );

    // Stage 2: Register tile ID for pixel selection
    always_ff @(posedge clk) begin
        if (~rst) begin
            stage2_tile_id <= '0;
        end else begin
            stage2_tile_id <= stage1_tile_id;
        end
    end

    // Combinational pixel selection (now smaller critical path)
    logic [COLOR_WIDTH-1:0] tile_pixel_comb;
    always_comb begin
        case(stage2_tile_id)
            5'd0: tile_pixel_comb = bram_grass_data;
            5'd1: tile_pixel_comb = bram_road_data1;
            5'd2: tile_pixel_comb = bram_road_data1_180;
            5'd3: tile_pixel_comb = bram_road_data2;
            5'd4: tile_pixel_comb = bram_road_data2_90;
            5'd5: tile_pixel_comb = bram_road_data2_180;
            5'd6: tile_pixel_comb = bram_road_data2_270;
            5'd7: tile_pixel_comb = bram_road_data3;
            5'd8: tile_pixel_comb = bram_road_data3_90;
            5'd9: tile_pixel_comb = bram_road_data3_180;
            5'd10: tile_pixel_comb = bram_road_data3_270;
            5'd11: tile_pixel_comb = bram_road_data4;
            5'd12: tile_pixel_comb = bram_road_data4_180;
            5'd13: tile_pixel_comb = bram_road_data5;
            5'd14: tile_pixel_comb = bram_road_data6;
            5'd15: tile_pixel_comb = bram_road_data6_90;
            5'd16: tile_pixel_comb = bram_road_data6_180;
            5'd17: tile_pixel_comb = bram_road_data6_270;
            5'd18: tile_pixel_comb = bram_road_data7;
            5'd19: tile_pixel_comb = bram_road_data7_90;
            5'd20: tile_pixel_comb = bram_road_data7_180;
            5'd21: tile_pixel_comb = bram_road_data7_270;
            default: tile_pixel_comb = bg_color;
        endcase
    end

    // Stage 3: Register final pixel output
    always_ff @(posedge clk) begin
        if (~rst) begin
            stage3_pixel <= bg_color;
        end else begin
            stage3_pixel <= tile_pixel_comb;
        end
    end

    // Split RGB channels
    assign {o_pix_r, o_pix_g, o_pix_b} = stage3_pixel;

endmodule
