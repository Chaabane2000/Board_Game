`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: ps2_receiver
// Description: This module receives and decodes serial data from a PS/2 device
//              (like a keyboard). It synchronizes the asynchronous PS/2 signals
//              to the system clock, detects the 11-bit frame (1 start bit, 8
//              data bits, 1 parity bit, 1 stop bit), and outputs the received
//              8-bit scancode.
//
//              It generates a single-cycle `byte_ready` pulse upon successful
//              reception and also provides a `release_flag` to indicate when a
//              key release sequence is detected.
//////////////////////////////////////////////////////////////////////////////////


module ps2_receiver (
    // System Inputs
    input  logic clk,        // System clock (e.g., 100MHz)
    input  logic reset,      // System reset

    // PS/2 Interface Inputs
    input  logic ps2_clk,    // Raw PS/2 clock signal
    input  logic ps2_data,   // Raw PS/2 data signal

    // Outputs
    output logic byte_ready,   // Pulsed high for one clock cycle when a new byte is available
    output logic [7:0] byte_out,   // The received 8-bit scancode
    output logic release_flag // High if the most recent byte was a release code (0xF0)
);

    //==============================================================================
    // Input Synchronization and Edge Detection
    //==============================================================================
    // Use a 3-stage shift register to synchronize the async PS/2 clock to the
    // system clock and to detect its falling edge. This is a standard CDC technique.
    logic [2:0] ps2_clk_sync;
    always_ff @(posedge clk) begin
        ps2_clk_sync <= {ps2_clk_sync[1:0], ps2_clk};
    end
    logic negedge_ps2_clk;
    assign negedge_ps2_clk = (ps2_clk_sync[2:1] == 2'b10);

    // Synchronize the PS/2 data line.
    logic [1:0] ps2_data_sync;
    always_ff @(posedge clk) begin
        ps2_data_sync <= {ps2_data_sync[0], ps2_data};
    end
    logic ps2_data_synced;
    assign ps2_data_synced = ps2_data_sync[1];

    //==============================================================================
    // FSM for Deserialization
    //==============================================================================
    typedef enum logic [1:0] {
        IDLE,  // Waiting for a start bit
        SHIFT, // Shifting in data, parity, and stop bits
        DONE   // Byte received, wait for FSM to be reset
    } state_t;

    state_t state;
    logic [3:0] bit_count; // Counts from 0 to 10 (start, data[7:0], parity, stop)
    logic [7:0] byte_temp;
    logic [7:0] prev_byte;

    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= IDLE;
            bit_count <= 0;
            byte_ready <= 0;
            release_flag <= 0;
            byte_out <= 0;
            prev_byte <= 0;
        end else begin
            byte_ready <= 0; // Default to low, will be pulsed high in DONE state

            case (state)
                IDLE: begin
                    // Wait for a falling edge on ps2_clk, and check if ps2_data is low (start bit)
                    if (negedge_ps2_clk && ~ps2_data_synced) begin
                        bit_count <= 0;
                        state <= SHIFT;
                    end
                end

                SHIFT: begin
                    if (negedge_ps2_clk) begin
                        bit_count <= bit_count + 1;
                        // Shift in data bits 1 through 8
                        if (bit_count >= 1 && bit_count <= 8) begin
                            byte_temp <= {ps2_data_synced, byte_temp[7:1]};
                        end
                        // After the stop bit (bit 10) is received, move to DONE state
                        else if (bit_count == 10) begin
                            state <= DONE;
                        end
                    end
                end

                DONE: begin
                    // The byte is ready. Update outputs.
                    byte_out <= byte_temp;
                    prev_byte <= byte_out; // Store previous byte for release flag check
                    byte_ready <= 1;

                    // Check if the *previous* byte was the release code prefix.
                    // A release sequence is two bytes: 0xF0, then the key's scancode.
                    release_flag <= (prev_byte == 8'hF0);

                    // Return to IDLE to wait for the next byte.
                    state <= IDLE;
                end

            endcase
        end
    end

endmodule
