`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: collision_mask
// Description: This module determines if a given pixel coordinate (curr_x, curr_y)
//              is on a "walkable" surface. It checks the tile ID at the given
//              coordinate from the main tilemap and, based on the tile type,
//              uses a specific pre-defined mask to see if the pixel falls within
//              a valid (walkable) region of that tile. This is used for car
//              collision detection.
//////////////////////////////////////////////////////////////////////////////////


module collision_mask #(
    // Tile and Map Dimensions
    parameter TILE_WIDTH     = 32, // Width of a single tile in pixels
    parameter TILE_HEIGHT    = 32, // Height of a single tile in pixels
    parameter NUM_TILES_X    = 40, // Number of tiles horizontally in the tilemap
    parameter NUM_TILES_Y    = 25, // Number of tiles vertically in the tilemap

    // Data Widths
    // NOTE: The parent module passes a 7-bit tile ID, which is truncated here to 5 bits.
    // This is intentional, as this module only cares about road tiles with lower ID numbers.
    parameter TILE_IDX_WIDTH = 5,  // Bit width for the tile ID
    parameter ADDR_WIDTH     = 10  // Bit width for pixel address within a tile (not used)
)(
    // Coordinate and Tilemap Inputs
    input  logic [10:0]                  curr_x,    // Current VGA horizontal pixel coordinate to check
    input  logic [9:0]                   curr_y,    // Current VGA vertical pixel coordinate to check
    input  logic [TILE_IDX_WIDTH-1:0]    tilemap [0:NUM_TILES_Y-1][0:NUM_TILES_X-1], // Game world tilemap

    // Output
    output logic                         walkable   // 1 if the coordinate is on a valid path, 0 otherwise
);

    // Compute tile coordinates
    logic [5:0] tile_x; // ceil(log2(40)) = 6
    logic [4:0] tile_y; // ceil(log2(25)) = 5
    logic [4:0] x_in_tile, y_in_tile;

    // Determine which tile the current pixel coordinate falls into.
    assign tile_x = curr_x[10:5];
    assign x_in_tile = curr_x[4:0];
    assign tile_y = curr_y[9:5];
    assign y_in_tile = curr_y[4:0];

    // Get the ID of the current tile from the tilemap.
    logic [TILE_IDX_WIDTH-1:0] tile_id;
    assign tile_id = tilemap[tile_y][tile_x];

    // Masks for each tile (1-bit memories)
    logic mask_r1, mask_r1_180, mask_r2, mask_r2_90, mask_r2_180, mask_r2_270, mask_r3, mask_r3_90, mask_r3_180, mask_r3_270, mask_r4, mask_r4_180, mask_r5, mask_r6, mask_r6_90, mask_r6_180, mask_r6_270, mask_r7, mask_r7_90, mask_r7_180, mask_r7_270;

    // Instantiate a mask checker for each relevant road tile and its rotations.
    // Each 'tile_mask' module checks if the current pixel within the tile is walkable.
    // NOTE: This is highly inefficient. A better approach would be one 'tile_mask' module
    // that takes 'tile_id' as an input and looks up the mask internally.
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

    // Select the correct mask output based on the current tile_id.
    always_comb begin
        case (tile_id)
            5'd0: walkable = 1'b0; // Grass is not walkable
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
            default: walkable = 1'b0; // All other tiles (trees, etc.) are not walkable
        endcase
    end
endmodule
