`timescale 1ns / 1ps

module keyboard_arrows (
    input  logic clk,
    input  logic reset,
    input  logic ps2_clk,
    input  logic ps2_data,

    output logic up,
    output logic down,
    output logic left,
    output logic right,
    output logic space
);

    // Get the raw PS/2 bytes
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

    // constants
    localparam BREAK = 8'hF0;
    localparam UP    = 8'h75;
    localparam DOWN  = 8'h72;
    localparam LEFT  = 8'h6B;
    localparam RIGHT = 8'h74;
    localparam SPACE = 8'h29;

    always_ff @(posedge clk) begin
        if (reset) begin
            up <= 1'b0;
            down <= 1'b0;
            left <= 1'b0;
            right <= 1'b0;
            space <= 1'b0;
        end else begin
            if (release_flag) begin // Key release
                case(code)
                    UP:    up    <= 1'b0;
                    DOWN:  down  <= 1'b0;
                    LEFT:  left  <= 1'b0;
                    RIGHT: right <= 1'b0;
                    SPACE: space <= 1'b0;
                endcase
            end else begin // Key press
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