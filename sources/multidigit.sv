`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: multidigit
// Description: This module drives an 8-digit, 7-segment display. It takes eight
//              4-bit numbers as input, converts each to 7-segment signals, and
//              then multiplexes them across the eight digits at a high refresh
//              rate to give the appearance that all digits are lit simultaneously.
//              This is designed for a common-cathode display with active-low anodes.
//////////////////////////////////////////////////////////////////////////////////


module multidigit(
    // System Inputs
    input  logic       clk,    // Main system clock (e.g., 100MHz)
    input  logic       rst,    // System reset

    // Data Inputs
    input  logic [3:0] dig7,   // Data for digit 7 (Most Significant Digit)
    input  logic [3:0] dig6,   // Data for digit 6
    input  logic [3:0] dig5,   // Data for digit 5
    input  logic [3:0] dig4,   // Data for digit 4
    input  logic [3:0] dig3,   // Data for digit 3
    input  logic [3:0] dig2,   // Data for digit 2
    input  logic [3:0] dig1,   // Data for digit 1
    input  logic [3:0] dig0,   // Data for digit 0 (Least Significant Digit)

    // 7-Segment Outputs
    output reg         a, b, c, d, e, f, g, // Cathode segments (active-high)
    output reg         dp,   // Decimal point (active-high)
    output reg [7:0]   an    // Anode selection (active-low)
);
    
    //==============================================================================
    // BCD to 7-Segment Conversion
    //==============================================================================
    // Instantiate a converter for each of the 8 digits.
    wire [6:0] seg0, seg1, seg2, seg3, seg4, seg5, seg6, seg7;
    
    sevenseg u0 (.num(dig0), .a(seg0[6]), .b(seg0[5]), .c(seg0[4]), .d(seg0[3]), .e(seg0[2]), .f(seg0[1]), .g(seg0[0]));  
    sevenseg u1 (.num(dig1), .a(seg1[6]), .b(seg1[5]), .c(seg1[4]), .d(seg1[3]), .e(seg1[2]), .f(seg1[1]), .g(seg1[0]));
    sevenseg u2 (.num(dig2), .a(seg2[6]), .b(seg2[5]), .c(seg2[4]), .d(seg2[3]), .e(seg2[2]), .f(seg2[1]), .g(seg2[0]));
    sevenseg u3 (.num(dig3), .a(seg3[6]), .b(seg3[5]), .c(seg3[4]), .d(seg3[3]), .e(seg3[2]), .f(seg3[1]), .g(seg3[0]));  
    sevenseg u4 (.num(dig4), .a(seg4[6]), .b(seg4[5]), .c(seg4[4]), .d(seg4[3]), .e(seg4[2]), .f(seg4[1]), .g(seg4[0]));
    sevenseg u5 (.num(dig5), .a(seg5[6]), .b(seg5[5]), .c(seg5[4]), .d(seg5[3]), .e(seg5[2]), .f(seg5[1]), .g(seg5[0]));
    sevenseg u6 (.num(dig6), .a(seg6[6]), .b(seg6[5]), .c(seg6[4]), .d(seg6[3]), .e(seg6[2]), .f(seg6[1]), .g(seg6[0]));  
    sevenseg u7 (.num(dig7), .a(seg7[6]), .b(seg7[5]), .c(seg7[4]), .d(seg7[3]), .e(seg7[2]), .f(seg7[1]), .g(seg7[0]));
    
    //==============================================================================
    // Display Refresh Clock Generation
    //==============================================================================
    // Divide the main clock to create a slower clock for multiplexing the digits.
    // With a 100MHz clock, 100MHz / 2^17 = ~763Hz.
    // The full refresh cycle for all 8 digits is 763Hz / 8 = ~95Hz, which is
    // fast enough to prevent any visible flicker.
    localparam integer DIV_BITS = 17;
    logic [DIV_BITS-1:0] div_counter;
    logic refresh_clk;

    always_ff @(posedge clk) begin
        div_counter <= div_counter + 1;
        refresh_clk <= div_counter[DIV_BITS-1];  // MSB as slow clock
    end
    
    //==============================================================================
    // Digit Multiplexing Logic
    //==============================================================================
    always_ff @(posedge refresh_clk or negedge rst) begin
        if (~rst) begin
            // On reset, enable the first digit (anode 7) and turn all segments off.
            an <= 8'b1111_1110;
            {a, b, c, d, e, f, g} <= 7'b000_0000; // Segments are active-high
            dp <= 1'b0;
        end 
        else begin
            // This implements a ring counter for the active-low anodes.
            // The '0' bit rotates left, activating the next digit in sequence.
            an <= {an[6:0], an[7]};
            
            // The decimal point is currently unused and always off.
            dp <= 1'b0;

            // Based on which anode is currently active, drive the corresponding
            // segment data to the outputs.
            case (an)
                8'b11111110: {a,b,c,d,e,f,g} <= seg0; 
                8'b11111101: {a,b,c,d,e,f,g} <= seg2;
                8'b11111011: {a,b,c,d,e,f,g} <= seg3;
                8'b11110111: {a,b,c,d,e,f,g} <= seg4;
                8'b11101111: {a,b,c,d,e,f,g} <= seg5;
                8'b11011111: {a,b,c,d,e,f,g} <= seg6;
                8'b10111111: {a,b,c,d,e,f,g} <= seg6;
                8'b01111111: {a,b,c,d,e,f,g} <= seg7; 
                default:     {a,b,c,d,e,f,g} <= 7'b0000000; // All segments off
            endcase
        end
    end
endmodule
