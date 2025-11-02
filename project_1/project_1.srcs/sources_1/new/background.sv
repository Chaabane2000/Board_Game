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

//THIS FILE DOES NOT SATISFY TIMING CONSTRAINTS!!!!!
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

    // tile coordinates
    logic [ADDR_TILES_X_SIZE-1:0] tile_x;
    logic [ADDR_TILES_Y_SIZE-1:0] tile_y;
    
    //intra-tile pixel coordinates
    logic [ADDR_TILES_WIDTH_SIZE-1:0] x_in_tile;
    logic [ADDR_TILES_HEIGHT_SIZE-1:0] y_in_tile;
    
    assign tile_x    = curr_x[10:5]; // equivalent to curr_x / 32
    assign x_in_tile = curr_x[4:0];  // equivalent to curr_x % 32

    assign tile_y    = curr_y[9:5];  // equivalent to curr_y / 32
    assign y_in_tile = curr_y[4:0];  // equivalent to curr_y % 32

    // Get tile ID from tilemap
    logic [TILE_IDX_WIDTH-1:0] tile_id, tile_id_d, tile_id_d2;
    assign tile_id = tilemap[tile_y][tile_x];

    // Compute BRAM address for current pixel
    logic [ADDR_WIDTH-1:0] addr, addr_90, addr_180, addr_270;;
    assign addr = (y_in_tile << 5) + x_in_tile;
    assign addr_90  = ((TILE_WIDTH - 1 - x_in_tile) << 5) + y_in_tile;
    assign addr_180 = ((TILE_HEIGHT - 1 - y_in_tile) << 5) + (TILE_WIDTH - 1 - x_in_tile);
    assign addr_270 = (x_in_tile << 5) + (TILE_HEIGHT - 1 - y_in_tile);


    // BRAM outputs
    logic [COLOR_WIDTH-1:0] bram_grass_data;
    logic [COLOR_WIDTH-1:0] bram_road_data1, bram_road_data1_180;
    logic [COLOR_WIDTH-1:0] bram_road_data2, bram_road_data2_90, bram_road_data2_180, bram_road_data2_270;
    logic [COLOR_WIDTH-1:0] bram_road_data3, bram_road_data3_90, bram_road_data3_180, bram_road_data3_270;
    logic [COLOR_WIDTH-1:0] bram_road_data4, bram_road_data4_180;
    logic [COLOR_WIDTH-1:0] bram_road_data5;
    logic [COLOR_WIDTH-1:0] bram_road_data6, bram_road_data6_90, bram_road_data6_180, bram_road_data6_270;
    logic [COLOR_WIDTH-1:0] bram_road_data7, bram_road_data7_90, bram_road_data7_180, bram_road_data7_270;;
    //logic [COLOR_WIDTH-1:0] bram_road_data8;
    //logic [COLOR_WIDTH-1:0] bram_road_data9;
    //logic [COLOR_WIDTH-1:0] bram_road_data10;


    // Instantiate tile BRAMs
    grass gr ( .clka(clk), .addra(addr), .douta(bram_grass_data) );
    road1  r1  ( .clka(clk), .addra(addr), .douta(bram_road_data1) );
    road1  r1_180  ( .clka(clk), .addra(addr_180), .douta(bram_road_data1_180) );
    road2  r2  ( .clka(clk), .addra(addr), .douta(bram_road_data2) );
    road2  r2_90  ( .clka(clk), .addra(addr_90), .douta(bram_road_data2_90) );
    road2  r2_180  ( .clka(clk), .addra(addr_180), .douta(bram_road_data2_180) );
    road2  r2_270  ( .clka(clk), .addra(addr_270), .douta(bram_road_data2_270) );
    road3  r3  ( .clka(clk), .addra(addr), .douta(bram_road_data3) );
    road3  r3_90  ( .clka(clk), .addra(addr_90), .douta(bram_road_data3_90) );
    road3  r3_180  ( .clka(clk), .addra(addr_180), .douta(bram_road_data3_180) );
    road3  r3_270  ( .clka(clk), .addra(addr_270), .douta(bram_road_data3_270) );
    road4  r4  ( .clka(clk), .addra(addr), .douta(bram_road_data4) );
    road4  r4_180  ( .clka(clk), .addra(addr_180), .douta(bram_road_data4_180) );
    road5  r5  ( .clka(clk), .addra(addr), .douta(bram_road_data5) );
    road6  r6  ( .clka(clk), .addra(addr), .douta(bram_road_data6) );
    road6  r6_90  ( .clka(clk), .addra(addr_90), .douta(bram_road_data6_90) );
    road6  r6_180  ( .clka(clk), .addra(addr_180), .douta(bram_road_data6_180) );
    road6  r6_270  ( .clka(clk), .addra(addr_270), .douta(bram_road_data6_270) );
    road7  r7  ( .clka(clk), .addra(addr), .douta(bram_road_data7) );
    road7  r7_90  ( .clka(clk), .addra(addr_90), .douta(bram_road_data7_90) );
    road7  r7_180  ( .clka(clk), .addra(addr_180), .douta(bram_road_data7_180) );
    road7  r7_270  ( .clka(clk), .addra(addr_270), .douta(bram_road_data7_270) );
   

    // Select output based on tile_id
    logic [COLOR_WIDTH-1:0] tile_pixel;
    always_comb begin
        case(tile_id_d2)
            5'd0: tile_pixel = bram_grass_data;
            5'd1: tile_pixel = bram_road_data1;
            5'd2: tile_pixel = bram_road_data1_180;
            5'd3: tile_pixel = (bram_road_data2 != 12'h000) ? bram_road_data2 : bram_grass_data;           
            5'd4: tile_pixel = (bram_road_data2_90 != 12'h000) ? bram_road_data2_90 : bram_grass_data;
            5'd5: tile_pixel = (bram_road_data2_180 != 12'h000) ? bram_road_data2_180 : bram_grass_data;
            5'd6: tile_pixel = (bram_road_data2_270 != 12'h000) ? bram_road_data2_270 : bram_grass_data;
            5'd7: tile_pixel = (bram_road_data3 != 12'h000) ? bram_road_data3 : bram_grass_data; 
            5'd8: tile_pixel = (bram_road_data3_90 != 12'h000) ? bram_road_data3_90 : bram_grass_data; 
            5'd9: tile_pixel = (bram_road_data3_180 != 12'h000) ? bram_road_data3_180 : bram_grass_data; 
            5'd10: tile_pixel = (bram_road_data3_270 != 12'h000) ? bram_road_data3_270 : bram_grass_data; 
            5'd11: tile_pixel = bram_road_data4;
            5'd12: tile_pixel = bram_road_data4_180;
            5'd13: tile_pixel = bram_road_data5;
            5'd14: tile_pixel = (bram_road_data6 != 12'h000) ? bram_road_data6 : bram_grass_data; 
            5'd15: tile_pixel = (bram_road_data6_90 != 12'h000) ? bram_road_data6_90 : bram_grass_data; 
            5'd16: tile_pixel = (bram_road_data6_180 != 12'h000) ? bram_road_data6_180 : bram_grass_data; 
            5'd17: tile_pixel = (bram_road_data6_270 != 12'h000) ? bram_road_data6_270 : bram_grass_data; 
            5'd18: tile_pixel = bram_road_data7;
            5'd19: tile_pixel = bram_road_data7_90;
            5'd20: tile_pixel = bram_road_data7_180;
            5'd21: tile_pixel = bram_road_data7_270;
            default: tile_pixel = bg_color;
        endcase
    end

    logic [COLOR_WIDTH-1:0] stage1, stage2;

    always_ff @(posedge clk) begin
        if (~rst) begin
            stage1 <= bg_color;
            stage2 <= bg_color;
            tile_id_d <= '0;
            tile_id_d2 <= '0;
        end else begin
            stage1 <= tile_pixel;
            stage2 <= stage1;
            tile_id_d <= tile_id;
            tile_id_d2 <= tile_id_d;
        end
    end

    // Split RGB channels
    assign {o_pix_r, o_pix_g, o_pix_b} = stage2;

endmodule