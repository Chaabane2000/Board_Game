`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: keyboard_arrows
// Description: This module decodes raw PS/2 scancodes from a `ps2_receiver`
//              and translates them into simple, persistent logic signals for the
//              arrow keys (up, down, left, right) and the spacebar. It handles
//              both key press and key release events to maintain the state of
//              each key.
//////////////////////////////////////////////////////////////////////////////////

module keyboard_arrows (
    // System and PS/2 Inputs
    input  logic clk,        // System clock
    input  logic reset,      // System reset
    input  logic ps2_clk,    // PS/2 interface clock
    input  logic ps2_data,   // PS/2 interface data

    // Key State Outputs
    output logic up,         // High when the 'Up Arrow' key is held down
    output logic down,       // High when the 'Down Arrow' key is held down
    output logic left,       // High when the 'Left Arrow' key is held down
    output logic right,      // High when the 'Right Arrow' key is held down
    output logic space       // High when the 'Spacebar' key is held down
);

    // Instantiate the PS/2 receiver to get raw scancodes.
    logic [7:0] code;
    logic release_flag;

    ps2_receiver ps2 (
        .clk(clk),
        .reset(reset),
        .ps2_clk(ps2_clk),
        .ps2_data(ps2_data),
        .byte_out(code),
        .release_flag(release_flag)
    );

    // PS/2 Set 2 scancodes for make (press) events.
    localparam UP    = 8'h75;
    localparam DOWN  = 8'h72;
    localparam LEFT  = 8'h6B;
    localparam RIGHT = 8'h74;
    localparam SPACE = 8'h29;

    // This block holds the state of each key. It sets the corresponding output flag
    // to high on a key press and low on a key release.
    always_ff @(posedge clk) begin
        if (reset) begin
            up <= 1'b0;
            down <= 1'b0;
            left <= 1'b0;
            right <= 1'b0;
            space <= 1'b0;
        end else begin
            // The ps2_receiver sets release_flag high for one cycle after a break code (0xF0) is received.
            if (release_flag) begin // This is a key release event.
                case(code)
                    UP:    up    <= 1'b0;
                    DOWN:  down  <= 1'b0;
                    LEFT:  left  <= 1'b0;
                    RIGHT: right <= 1'b0;
                    SPACE: space <= 1'b0;
                endcase
            end else begin // This is a key press event.
                case(code)
                    UP:    up    <= 1'b1;
                    DOWN:  down  <= 1'b1;
                    LEFT:  left  <= 1'b1;
                    RIGHT: right <= 1'b1;
                    SPACE: space <= 1'b1;
                endcase
            end
        end
    end
endmodule