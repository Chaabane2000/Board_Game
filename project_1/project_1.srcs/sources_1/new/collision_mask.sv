`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2025 03:43:08 PM
// Design Name: 
// Module Name: collision_mask
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


module collision_mask #(
    parameter TILE_WIDTH  = 32,
    parameter TILE_HEIGHT = 32,
    parameter NUM_TILES_X = 40,
    parameter NUM_TILES_Y = 25,
    parameter TILE_IDX_WIDTH = 5,
    parameter ADDR_WIDTH = 10
)(
    input  logic clk,
    input  logic [10:0] curr_x,
    input  logic [9:0]  curr_y,
    input  logic [TILE_IDX_WIDTH-1:0] tilemap [0:NUM_TILES_Y-1][0:NUM_TILES_X-1],
    output logic walkable
);

    // Compute tile coordinates
    logic [5:0] tile_x; // ceil(log2(40)) = 6
    logic [4:0] tile_y; // ceil(log2(25)) = 5
    logic [4:0] x_in_tile, y_in_tile;

    assign tile_x = curr_x[10:5];
    assign x_in_tile = curr_x[4:0];
    assign tile_y = curr_y[9:5];
    assign y_in_tile = curr_y[4:0];

    // BRAM address within the tile
    logic [ADDR_WIDTH-1:0] addr;
    assign addr = (y_in_tile << 5) + x_in_tile;

    // Tile ID
    logic [TILE_IDX_WIDTH-1:0] tile_id;
    assign tile_id = tilemap[tile_y][tile_x];

    // Masks for each tile (1-bit memories)
    logic mask_r1, mask_r1_180, mask_r2, mask_r2_90, mask_r2_180, mask_r2_270, mask_r3, mask_r3_90, mask_r3_180, mask_r3_270, mask_r4, mask_r4_180, mask_r5, mask_r6, mask_r6_90, mask_r6_180, mask_r6_270, mask_r7, mask_r7_90, mask_r7_180, mask_r7_270;

    // Example instantiation (each .mif or .coe file generated from mask.txt)
    tile_mask u_mask_r1 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd0), .tile_id(5'd1), .allow(mask_r1));
    tile_mask u_mask_r1_180 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd2), .tile_id(5'd1), .allow(mask_r1_180));
    tile_mask u_mask_r2 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd0), .tile_id(5'd3), .allow(mask_r2));
    tile_mask u_mask_r2_90 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd1), .tile_id(5'd3), .allow(mask_r2_90));
    tile_mask u_mask_r2_180 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd2), .tile_id(5'd3), .allow(mask_r2_180));
    tile_mask u_mask_r2_270 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd3), .tile_id(5'd3), .allow(mask_r2_270));
    tile_mask u_mask_r3 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd0), .tile_id(5'd7), .allow(mask_r3));
    tile_mask u_mask_r3_90 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd1), .tile_id(5'd7), .allow(mask_r3_90));
    tile_mask u_mask_r3_180 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd2), .tile_id(5'd7), .allow(mask_r3_180));
    tile_mask u_mask_r3_270 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd3), .tile_id(5'd7), .allow(mask_r3_270));
    tile_mask u_mask_r4 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd0), .tile_id(5'd11), .allow(mask_r4));
    tile_mask u_mask_r4_180 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd2), .tile_id(5'd11), .allow(mask_r4_180));
    tile_mask u_mask_r5 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd0), .tile_id(5'd13), .allow(mask_r5));
    tile_mask u_mask_r6 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd0), .tile_id(5'd14), .allow(mask_r6));
    tile_mask u_mask_r6_90 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd1), .tile_id(5'd14), .allow(mask_r6_90));
    tile_mask u_mask_r6_180 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd2), .tile_id(5'd14), .allow(mask_r6_180));
    tile_mask u_mask_r6_270 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd3), .tile_id(5'd14), .allow(mask_r6_270));
    tile_mask u_mask_r7 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd0), .tile_id(5'd18), .allow(mask_r7));
    tile_mask u_mask_r7_90 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd1), .tile_id(5'd18), .allow(mask_r7_90));
    tile_mask u_mask_r7_180 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd2), .tile_id(5'd18), .allow(mask_r7_180));
    tile_mask u_mask_r7_270 (.x(x_in_tile), .y(y_in_tile), .rotation(2'd3), .tile_id(5'd18), .allow(mask_r7_270));

    // Select mask bit based on tile_id
    always_comb begin
        case (tile_id)
            5'd0: walkable = 1'b0; // grass 
            5'd1: walkable = mask_r1;
            5'd2: walkable = mask_r1_180;
            5'd3: walkable = mask_r2;
            5'd4: walkable = mask_r2_90;
            5'd5: walkable = mask_r2_180;
            5'd6: walkable = mask_r2_270;
            5'd7: walkable = mask_r3;
            5'd8: walkable = mask_r3_90;
            5'd9: walkable = mask_r3_180;
            5'd10: walkable = mask_r3_270;
            5'd11: walkable = mask_r4;
            5'd12: walkable = mask_r4_180;
            5'd13: walkable = mask_r5;
            5'd14: walkable = mask_r6;
            5'd15: walkable = mask_r6_90;
            5'd16: walkable = mask_r6_180;
            5'd17: walkable = mask_r6_270;
            5'd18: walkable = mask_r7;
            5'd19: walkable = mask_r7_90;
            5'd20: walkable = mask_r7_180;
            5'd21: walkable = mask_r7_270;
            default: walkable = 1'b0;
        endcase
    end
endmodule

