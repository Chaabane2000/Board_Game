`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2025 04:23:33 PM
// Design Name: 
// Module Name: ps2_receiver
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


module ps2_receiver (
    input  logic clk,        // fast system clock (50-200 MHz)
    input  logic reset,
    input  logic ps2_clk,
    input  logic ps2_data,

    output logic byte_ready,
    output logic [7:0] byte_out
);

    // sync inputs
    logic ps2c_0, ps2c_1;
    logic ps2d_0, ps2d_1;

    always_ff @(posedge clk) begin
        ps2c_0 <= ps2_clk;
        ps2c_1 <= ps2c_0;

        ps2d_0 <= ps2_data;
        ps2d_1 <= ps2d_0;
    end

    // detect falling edge of ps2 clock
    logic ps2c_prev;
    always_ff @(posedge clk)
        ps2c_prev <= ps2c_1;

    wire ps2_fall = (ps2c_prev == 1 && ps2c_1 == 0);

    // shift register
    logic [10:0] shift;
    logic [3:0]  count;

    always_ff @(posedge clk) begin
        if (reset) begin
            count      <= 0;
            byte_ready <= 0;
        end else begin
            byte_ready <= 0;

            if (ps2_fall) begin
                shift <= {ps2d_1, shift[10:1]};
                count <= count + 1;

                if (count == 10) begin
                    byte_out   <= shift[8:1];   // bits 1..8 = data byte
                    byte_ready <= 1;
                    count      <= 0;
                end
            end
        end
    end

endmodule

