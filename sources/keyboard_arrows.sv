`timescale 1ns / 1ps

module keyboard_arrows (
    input  logic clk,
    input  logic reset,
    input  logic ps2_clk,
    input  logic ps2_data,

    output logic up,
    output logic down,
    output logic left,
    output logic right
);

    // Get the raw PS/2 bytes
    logic byte_ready;
    logic [7:0] code;

    ps2_receiver ps2 (
        .clk(clk),
        .reset(reset),
        .ps2_clk(ps2_clk),
        .ps2_data(ps2_data),
        .byte_ready(byte_ready),
        .byte_out(code)
    );

    // constants
    localparam BREAK = 8'hF0;
    localparam UP    = 8'h75;
    localparam DOWN  = 8'h72;
    localparam LEFT  = 8'h6B;
    localparam RIGHT = 8'h74;

    logic break_next;

    always_ff @(posedge clk or posedge reset) begin
        if (reset) begin
            up <= 1'b0;
            down <= 1'b0;
            left <= 1'b0;
            right <= 1'b0;
            break_next <= 1'b0;
        end else begin
            // Default to de-asserting the pulse signals
            up <= 1'b0;
            down <= 1'b0;
            left <= 1'b0;
            right <= 1'b0;

            if (byte_ready) begin
                if (code == BREAK) begin
                    break_next <= 1;
                end else begin
                    if (break_next) begin
                        // This is a key release, do nothing
                        break_next <= 0;
                    end else begin
                        // This is a key press, generate a pulse
                        case(code)
                            UP:    up    <= 1;
                            DOWN:  down  <= 1;
                            LEFT:  left  <= 1;
                            RIGHT: right <= 1;
                        endcase
                    end
                end
            end
        end
    end

endmodule