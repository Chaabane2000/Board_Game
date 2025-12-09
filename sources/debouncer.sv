`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: debouncer
// Description: This module debounces up to two independent single-bit input
//              signals (I0, I1). It uses a counter-based approach to filter
//              out spurious glitches or bounces that occur when a mechanical
//              switch or button is pressed or released. An input signal must
//              remain stable for a specified number of clock cycles before the
//              corresponding output is updated.
//////////////////////////////////////////////////////////////////////////////////


module debouncer(
    // System Inputs
    input  logic clk,    // System clock
    input  logic reset,  // System reset

    // Raw Inputs to be Debounced
    input  logic I0,     // Input channel 0
    input  logic I1,     // Input channel 1

    // Debounced Outputs
    output logic O0,     // Debounced output for channel 0
    output logic O1      // Debounced output for channel 1
    );
    
    //==============================================================================
    // Configuration
    //==============================================================================
    // The number of consecutive stable clock cycles required to validate a change.
    // For a 100MHz clock, 2000000 cycles is 20ms, a common debounce time.
    localparam DEBOUNCE_CYCLES = 20'd1_999_999;
    localparam COUNTER_WIDTH = $clog2(DEBOUNCE_CYCLES + 1);
    
    //==============================================================================
    // Internal State
    //==============================================================================
    logic [COUNTER_WIDTH-1:0] cnt0, cnt1; // Counters for each channel
    logic input_sync0, input_sync1;       // Stores the last seen stable input value
    
    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            // Reset all state registers to a known value
            cnt0 <= '0;
            cnt1 <= '0;
            input_sync0 <= 1'b0;
            input_sync1 <= 1'b0;
            O0 <= 1'b0;
            O1 <= 1'b0;
        end else begin
            // --- Debounce Logic for Channel 0 ---
            if (I0 == input_sync0) begin
                // Input is stable. Increment counter until it reaches the threshold.
                if (cnt0 == DEBOUNCE_CYCLES) begin
                    O0 <= input_sync0; // Update output once fully debounced
                end else begin
                    cnt0 <= cnt0 + 1;
                end
            end else begin
                // Input has changed (or is bouncing). Reset counter and latch new value.
                cnt0 <= '0;
                input_sync0 <= I0;
            end

            // --- Debounce Logic for Channel 1 ---
            if (I1 == input_sync1) begin
                // Input is stable. Increment counter.
                if (cnt1 == DEBOUNCE_CYCLES) begin
                    O1 <= input_sync1; // Update output
                end else begin
                    cnt1 <= cnt1 + 1;
                end
            end else begin
                // Input has changed. Reset counter.
                cnt1 <= '0;
                input_sync1 <= I1;
            end
        end
    end
    
endmodule