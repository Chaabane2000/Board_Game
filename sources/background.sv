`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: background
// Description: Tile-based background renderer with Alpha Blending.
//              - Supports 16-bit ARGB4444 textures.
//              - Blends Sprites (Trees/Rocks) over the Grass base layer.
//              - FIXED: Forces Roads/Grass to be Opaque (ignore BRAM alpha).
//              - FIXED: Allows Trees/Rocks to Blend (use BRAM alpha).
//////////////////////////////////////////////////////////////////////////////////

module background #(
    parameter TILE_WIDTH  = 32,
    parameter TILE_HEIGHT = 32,
    parameter ADDR_TILES_WIDTH_SIZE = 5, 
    parameter ADDR_TILES_HEIGHT_SIZE = 5,
    parameter NUM_TILES_X = 40,
    parameter NUM_TILES_Y = 25,
    parameter ADDR_TILES_X_SIZE = 6, 
    parameter ADDR_TILES_Y_SIZE = 5, 
    parameter COLOR_WIDTH = 16,     // 16 bits for ARGB4444
    parameter TILE_IDX_WIDTH = 7,
    parameter ADDR_WIDTH = 10 
)(
    input  logic                         clk,
    input  logic                         rst,
    input  logic [10:0]                  curr_x, 
    input  logic [9:0]                   curr_y,  
    input  logic [TILE_IDX_WIDTH-1:0]    tilemap [0:NUM_TILES_Y-1][0:NUM_TILES_X-1],
    input  logic [COLOR_WIDTH-1:0]       bg_color, // Expecting 12-bit RGB or 16-bit ARGB
    output logic [3:0]                   o_pix_r,
    output logic [3:0]                   o_pix_g,
    output logic [3:0]                   o_pix_b
);

    // --- Coordinate Calculation (Unchanged) ---
    logic [ADDR_TILES_X_SIZE-1:0] tile_x;
    logic [ADDR_TILES_Y_SIZE-1:0] tile_y;
    logic [ADDR_TILES_WIDTH_SIZE-1:0] x_in_tile;
    logic [ADDR_TILES_HEIGHT_SIZE-1:0] y_in_tile;
    
    assign tile_x    = curr_x[10:5]; 
    assign x_in_tile = curr_x[4:0];  
    assign tile_y    = curr_y[9:5];  
    assign y_in_tile = curr_y[4:0];  

    logic [TILE_IDX_WIDTH-1:0] tile_id;
    assign tile_id = tilemap[tile_y][tile_x];

    logic [ADDR_WIDTH-1:0] addr, addr_90, addr_180, addr_270;
    assign addr = (y_in_tile << 5) + x_in_tile;
    assign addr_90  = ((TILE_WIDTH - 1 - x_in_tile) << 5) + y_in_tile;
    assign addr_180 = ((TILE_HEIGHT - 1 - y_in_tile) << 5) + (TILE_WIDTH - 1 - x_in_tile);
    assign addr_270 = (x_in_tile << 5) + (TILE_HEIGHT - 1 - y_in_tile);

    // --- PIPELINE STAGE 1: Address & Control ---
    logic [ADDR_WIDTH-1:0] addr_reg, addr_90_reg, addr_180_reg, addr_270_reg;
    logic [TILE_IDX_WIDTH-1:0] tile_id_sr [0:4];

    always_ff @(posedge clk) begin
        if (~rst) begin
            addr_reg <= 0;
            addr_90_reg <= 0;
            addr_180_reg <= 0;
            addr_270_reg <= 0;
            for(int i=0; i<5; i++) tile_id_sr[i] <= 0;
        end else begin
            addr_reg <= addr;
            addr_90_reg <= addr_90;
            addr_180_reg <= addr_180;
            addr_270_reg <= addr_270;

            tile_id_sr[0] <= tile_id;
            tile_id_sr[1] <= tile_id_sr[0];
            tile_id_sr[2] <= tile_id_sr[1];
            tile_id_sr[3] <= tile_id_sr[2];
            tile_id_sr[4] <= tile_id_sr[3];
        end
    end

    // --- BRAM Signals ---
    logic [COLOR_WIDTH-1:0] bram_grass_data;
    logic [COLOR_WIDTH-1:0] bram_road_data1, bram_road_data1_180;
    logic [COLOR_WIDTH-1:0] bram_road_data2, bram_road_data2_90, bram_road_data2_180, bram_road_data2_270;
    logic [COLOR_WIDTH-1:0] bram_road_data3, bram_road_data3_90, bram_road_data3_180, bram_road_data3_270;
    logic [COLOR_WIDTH-1:0] bram_road_data4, bram_road_data4_180;
    logic [COLOR_WIDTH-1:0] bram_road_data5;
    logic [COLOR_WIDTH-1:0] bram_road_data6, bram_road_data6_90, bram_road_data6_180, bram_road_data6_270;
    logic [COLOR_WIDTH-1:0] bram_road_data7, bram_road_data7_90, bram_road_data7_180, bram_road_data7_270;
    logic [COLOR_WIDTH-1:0] bram_road_data11, bram_road_data12, bram_road_data13, bram_road_data14;
    logic [COLOR_WIDTH-1:0] bram_road_data15, bram_road_data16, bram_road_data17, bram_road_data18;
    logic [COLOR_WIDTH-1:0] bram_road_data19, bram_road_data20, bram_road_data21, bram_road_data22;
    logic [COLOR_WIDTH-1:0] bram_road_start_data1, bram_road_start_data2, bram_road_start_data3, bram_road_position_data;
    logic [COLOR_WIDTH-1:0] bram_letter_l, bram_letter_a, bram_letter_p, bram_letter_t, bram_letter_i, bram_letter_m, bram_letter_e;
    logic [COLOR_WIDTH-1:0] bram_letter_two_points, bram_letter_s ,bram_letter_b, bram_letter_c, bram_letter_o, bram_letter_r;
    logic [COLOR_WIDTH-1:0] bram_number_0, bram_number_1, bram_number_2, bram_number_3, bram_number_4;
    logic [COLOR_WIDTH-1:0] bram_number_5, bram_number_6, bram_number_7, bram_number_8, bram_number_9;
    logic [COLOR_WIDTH-1:0] bram_tree1, bram_tree2, bram_tree3, bram_tree4;
    logic [COLOR_WIDTH-1:0] bram_tribune1, bram_tribune2, bram_tribune3, bram_tribune4, bram_tribune5, bram_tribune6, bram_tribune7, bram_tribune8;
    logic [COLOR_WIDTH-1:0] bram_rock1, bram_rock2, bram_rock3, bram_rock4, bram_rock5;
    
    // --- BRAM Instantiations ---
    grass gr ( .clka(clk), .addra(addr_reg), .douta(bram_grass_data) );
    road1  r1  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data1) );
    road1  r1_180  ( .clka(clk), .addra(addr_180_reg), .douta(bram_road_data1_180) );
    road2  r2  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data2) );
    road2  r2_90  ( .clka(clk), .addra(addr_90_reg), .douta(bram_road_data2_90) );
    road2  r2_180  ( .clka(clk), .addra(addr_180_reg), .douta(bram_road_data2_180) );
    road2  r2_270  ( .clka(clk), .addra(addr_270_reg), .douta(bram_road_data2_270) );
    road3  r3  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data3) );
    road3  r3_90  ( .clka(clk), .addra(addr_90_reg), .douta(bram_road_data3_90) );
    road3  r3_180  ( .clka(clk), .addra(addr_180_reg), .douta(bram_road_data3_180) );
    road3  r3_270  ( .clka(clk), .addra(addr_270_reg), .douta(bram_road_data3_270) );
    road4  r4  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data4) );
    road4  r4_180  ( .clka(clk), .addra(addr_180_reg), .douta(bram_road_data4_180) );
    road5  r5  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data5) );
    road6  r6  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data6) );
    road6  r6_90  ( .clka(clk), .addra(addr_90_reg), .douta(bram_road_data6_90) );
    road6  r6_180  ( .clka(clk), .addra(addr_180_reg), .douta(bram_road_data6_180) );
    road6  r6_270  ( .clka(clk), .addra(addr_270_reg), .douta(bram_road_data6_270) );
    road7  r7  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data7) );
    road7  r7_90  ( .clka(clk), .addra(addr_90_reg), .douta(bram_road_data7_90) );
    road7  r7_180  ( .clka(clk), .addra(addr_180_reg), .douta(bram_road_data7_180) );
    road7  r7_270  ( .clka(clk), .addra(addr_270_reg), .douta(bram_road_data7_270) );
    road_start1  r_s1  ( .clka(clk), .addra(addr_reg), .douta(bram_road_start_data1) );
    road_start2  r_s2  ( .clka(clk), .addra(addr_reg), .douta(bram_road_start_data2) );
    road_start3  r_s3  ( .clka(clk), .addra(addr_reg), .douta(bram_road_start_data3) );
    road_position  r_p  ( .clka(clk), .addra(addr_reg), .douta(bram_road_position_data) );
    L  letter_l  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_l) );
    A  letter_a  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_a) );
    P  letter_p  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_p) );
    T  letter_t  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_t) );
    I  letter_i  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_i) );
    M  letter_m  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_m) );
    E  letter_e  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_e) );
    two_points  letter_two_points  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_two_points) );
    S  letter_s  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_s) );
    N0  number_0  ( .clka(clk), .addra(addr_reg), .douta(bram_number_0) );
    N1  number_1  ( .clka(clk), .addra(addr_reg), .douta(bram_number_1) );
    N2  number_2  ( .clka(clk), .addra(addr_reg), .douta(bram_number_2) );
    N3  number_3  ( .clka(clk), .addra(addr_reg), .douta(bram_number_3) );
    N4  number_4  ( .clka(clk), .addra(addr_reg), .douta(bram_number_4) );
    N5  number_5  ( .clka(clk), .addra(addr_reg), .douta(bram_number_5) );
    N6  number_6  ( .clka(clk), .addra(addr_reg), .douta(bram_number_6) );
    N7  number_7  ( .clka(clk), .addra(addr_reg), .douta(bram_number_7) );
    N8  number_8  ( .clka(clk), .addra(addr_reg), .douta(bram_number_8) );
    N9  number_9  ( .clka(clk), .addra(addr_reg), .douta(bram_number_9) );
    B  letter_b  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_b) );
    C  letter_c  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_c) );
    O  letter_o  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_o) );
    R  letter_r  ( .clka(clk), .addra(addr_reg), .douta(bram_letter_r) );
    road11  r11  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data11) );
    road12  r12  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data12) );
    road13  r13  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data13) );
    road14  r14  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data14) );
    road15  r15  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data15) );
    road16  r16  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data16) );
    road17  r17  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data17) );
    road18  r18  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data18) );
    road19  r19  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data19) );
    road20  r20  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data20) );
    road21  r21  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data21) );
    road22  r22  ( .clka(clk), .addra(addr_reg), .douta(bram_road_data22) );
    tree1  t1  ( .clka(clk), .addra(addr_reg), .douta(bram_tree1) );
    tree2  t2  ( .clka(clk), .addra(addr_reg), .douta(bram_tree2) );
    tree3  t3  ( .clka(clk), .addra(addr_reg), .douta(bram_tree3) );
    tree4  t4  ( .clka(clk), .addra(addr_reg), .douta(bram_tree4) );
    tribune1  tr1  ( .clka(clk), .addra(addr_reg), .douta(bram_tribune1) );
    tribune2  tr2  ( .clka(clk), .addra(addr_reg), .douta(bram_tribune2) );
    tribune3  tr3  ( .clka(clk), .addra(addr_reg), .douta(bram_tribune3) );
    tribune4  tr4  ( .clka(clk), .addra(addr_reg), .douta(bram_tribune4) );
    tribune5  tr5  ( .clka(clk), .addra(addr_reg), .douta(bram_tribune5) );
    tribune6  tr6  ( .clka(clk), .addra(addr_reg), .douta(bram_tribune6) );
    tribune7  tr7  ( .clka(clk), .addra(addr_reg), .douta(bram_tribune7) );
    tribune8  tr8  ( .clka(clk), .addra(addr_reg), .douta(bram_tribune8) );
    rock1  rck1  ( .clka(clk), .addra(addr_reg), .douta(bram_rock1) );
    rock2  rck2  ( .clka(clk), .addra(addr_reg), .douta(bram_rock2) );
    rock3  rck3  ( .clka(clk), .addra(addr_reg), .douta(bram_rock3) );
    rock4  rck4  ( .clka(clk), .addra(addr_reg), .douta(bram_rock4) );
    rock5  rck5  ( .clka(clk), .addra(addr_reg), .douta(bram_rock5) );
    
    // --- FOREGROUND SELECTION LOGIC ---
    // [1] accounts for: 1 cycle Addr Register + 1 cycle BRAM Latency (adjust to [2] if needed)
    logic [TILE_IDX_WIDTH-1:0] tile_sel;
    assign tile_sel = tile_id_sr[1]; 

    logic [COLOR_WIDTH-1:0] fg_pixel;
    
    // Select the foreground sprite.
    always_comb begin
        case(tile_sel)
            7'd0: fg_pixel = bram_grass_data;
            7'd1: fg_pixel = bram_road_data1;
            7'd2: fg_pixel = bram_road_data1_180;
            7'd3: fg_pixel = bram_road_data2;            
            7'd4: fg_pixel = bram_road_data2_90;
            7'd5: fg_pixel = bram_road_data2_180;
            7'd6: fg_pixel = bram_road_data2_270;
            7'd7: fg_pixel = bram_road_data3; 
            7'd8: fg_pixel = bram_road_data3_90; 
            7'd9: fg_pixel = bram_road_data3_180; 
            7'd10: fg_pixel = bram_road_data3_270; 
            7'd11: fg_pixel = bram_road_data4;
            7'd12: fg_pixel = bram_road_data4_180;
            7'd13: fg_pixel = bram_road_data5;
            7'd14: fg_pixel = bram_road_data6; 
            7'd15: fg_pixel = bram_road_data6_90; 
            7'd16: fg_pixel = bram_road_data6_180; 
            7'd17: fg_pixel = bram_road_data6_270; 
            7'd18: fg_pixel = bram_road_data7;
            7'd19: fg_pixel = bram_road_data7_90;
            7'd20: fg_pixel = bram_road_data7_180;
            7'd21: fg_pixel = bram_road_data7_270;
            7'd22: fg_pixel = bram_road_start_data1;
            7'd23: fg_pixel = bram_road_start_data2;
            7'd24: fg_pixel = bram_road_start_data3;
            7'd25: fg_pixel = bram_road_position_data;
            7'd26: fg_pixel = bram_letter_l;
            7'd27: fg_pixel = bram_letter_a;
            7'd28: fg_pixel = bram_letter_p;
            7'd29: fg_pixel = bram_letter_t;
            7'd30: fg_pixel = bram_letter_i;
            7'd31: fg_pixel = bram_letter_m;
            7'd32: fg_pixel = bram_letter_e;
            7'd33: fg_pixel = bram_letter_two_points;
            7'd34: fg_pixel = bram_letter_s;
            7'd35: fg_pixel = bram_number_0;
            7'd36: fg_pixel = bram_number_1;
            7'd37: fg_pixel = bram_number_2;
            7'd38: fg_pixel = bram_number_3;
            7'd39: fg_pixel = bram_number_4;
            7'd40: fg_pixel = bram_number_5;
            7'd41: fg_pixel = bram_number_6;
            7'd42: fg_pixel = bram_number_7;
            7'd43: fg_pixel = bram_number_8;
            7'd44: fg_pixel = bram_number_9;
            7'd45: fg_pixel = bram_letter_b;
            7'd46: fg_pixel = bram_letter_c;
            7'd47: fg_pixel = bram_letter_o;
            7'd48: fg_pixel = bram_letter_r;
            7'd49: fg_pixel = bram_road_data11;
            7'd50: fg_pixel = bram_road_data12;
            7'd51: fg_pixel = bram_road_data13;
            7'd52: fg_pixel = bram_road_data14;
            7'd53: fg_pixel = bram_road_data15;
            7'd54: fg_pixel = bram_road_data16;
            7'd55: fg_pixel = bram_road_data17;
            7'd56: fg_pixel = bram_road_data18;
            7'd57: fg_pixel = bram_road_data19;
            7'd58: fg_pixel = bram_road_data20;
            7'd59: fg_pixel = bram_road_data21;
            7'd60: fg_pixel = bram_road_data22;
            7'd61: fg_pixel = bram_tree1;
            7'd62: fg_pixel = bram_tree2;
            7'd63: fg_pixel = bram_tree3;
            7'd64: fg_pixel = bram_tree4;
            7'd65: fg_pixel = bram_tribune1;
            7'd66: fg_pixel = bram_tribune2;
            7'd67: fg_pixel = bram_tribune3;
            7'd68: fg_pixel = bram_tribune4;
            7'd69: fg_pixel = bram_tribune5;
            7'd70: fg_pixel = bram_tribune6;
            7'd71: fg_pixel = bram_tribune7;
            7'd72: fg_pixel = bram_tribune8;
            7'd73: fg_pixel = bram_rock1;
            7'd74: fg_pixel = bram_rock2;
            7'd75: fg_pixel = bram_rock3;
            7'd76: fg_pixel = bram_rock4;
            7'd77: fg_pixel = bram_rock5;
            default: fg_pixel = {4'hF, bg_color}; // Treat default bg as Opaque
        endcase
    end

    // --- PIPELINE STAGE 2: Alpha Blending ---
    
    // Background Layer: Grass (since most sprites are overlayed on the field)
    logic [COLOR_WIDTH-1:0] bg_pixel_local;
    assign bg_pixel_local = bram_grass_data;

    // Components
    logic [3:0] fg_a_raw, fg_r, fg_g, fg_b;
    logic [3:0] bg_r, bg_g, bg_b;
    
    assign {fg_a_raw, fg_r, fg_g, fg_b} = fg_pixel;
    assign {bg_r, bg_g, bg_b} = bg_pixel_local[11:0]; 

    // --- ALPHA CONTROL LOGIC ---
    // User Request: Only Tree (61-64) and Rock (73-77) support alpha.
    //               Grass (0) and Roads (1-25, 49-60) do not (Force Opaque).
    //               (We treat Text/Tribunes as Alpha-capable to prevent artifacts).
    logic is_opaque_tile;
    always_comb begin
        if ((tile_sel >= 7'd50 && tile_sel <= 7'd60) || (tile_sel >= 7'd73 && tile_sel <= 7'd77) || (tile_sel >= 7'd61 && tile_sel <= 7'd64) || (tile_sel >= 7'd3 && tile_sel <= 7'd10))
            is_opaque_tile = 1'b0; // Trees      
        else 
            is_opaque_tile = 1'b1; // Text, Trees, Tribunes, Rocks
    end

    logic [3:0] fg_a;
    assign fg_a = (is_opaque_tile) ? ((fg_pixel == 0) ? 4'd0 : 4'd15) : fg_a_raw;

    // Alpha Inverse
    logic [3:0] inv_alpha;
    assign inv_alpha = 4'd15 - fg_a;

    // Blending Math
    logic [8:0] r_mixed, g_mixed, b_mixed;
    always_comb begin
        r_mixed = (fg_r * fg_a) + (bg_r * inv_alpha);
        g_mixed = (fg_g * fg_a) + (bg_g * inv_alpha);
        b_mixed = (fg_b * fg_a) + (bg_b * inv_alpha);
    end

    // Output Register
    logic [COLOR_WIDTH-1:0] stage1, stage2;

    always_ff @(posedge clk) begin
        if (~rst) begin
            stage1 <= {4'hF, bg_color};
            stage2 <= {4'hF, bg_color};
        end else begin
            // Result is (Mix / 16)
            stage1[15:12] <= 4'hF; // Output is always opaque to VGA
            stage1[11:8]  <= r_mixed[7:4];
            stage1[7:4]   <= g_mixed[7:4];
            stage1[3:0]   <= b_mixed[7:4];
            stage2 <= stage1;
        end
    end

    // Split RGB channels
    assign {o_pix_r, o_pix_g, o_pix_b} = stage1[11:0];

endmodule