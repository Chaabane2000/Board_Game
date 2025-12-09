`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: score
// Description: This module manages the game's scoring and timing logic. It:
//              1. Tracks the car's position through a series of checkpoints.
//              2. Uses a state machine to validate that checkpoints are passed in the correct order.
//              3. Generates a pulse (`crossed_line`) when a valid lap is completed.
//              4. Counts the current lap time in seconds.
//              5. Stores the best lap time achieved.
//              6. Instantiates a `multidigit` driver to display the current and best lap times
//                 on an 8-digit 7-segment display.
//              7. Resets timers when the track layout changes (via `swtch` input).
//////////////////////////////////////////////////////////////////////////////////


module score#(
    // Checkpoint and Finish Line Coordinate Thresholds
    parameter X_THRESH_LEFT_START  = 586, // Finish Line Left X Boundary
    parameter X_THRESH_RIGHT_START = 599, // Finish Line Right X Boundary
    parameter Y_THRESH_START       = 300, // Finish Line Top Y Boundary
    parameter X_THRESH_1           = 800, // Checkpoint 1 Right X Boundary
    parameter Y_THRESH_LEFT_1      = 400, // Checkpoint 1 Top Y Boundary
    parameter Y_THRESH_RIGHT_1     = 450, // Checkpoint 1 Bottom Y Boundary
    parameter X_THRESH_LEFT_2      = 550, // Checkpoint 2 Left X Boundary
    parameter X_THRESH_RIGHT_2     = 599, // Checkpoint 2 Right X Boundary
    parameter Y_THRESH_2           = 500, // Checkpoint 2 Top Y Boundary
    parameter X_THRESH_3           = 500, // Checkpoint 3 Left X Boundary
    parameter Y_THRESH_LEFT_3      = 400, // Checkpoint 3 Top Y Boundary
    parameter Y_THRESH_RIGHT_3     = 450, // Checkpoint 3 Bottom Y Boundary

    // Simulation speed-up parameter
    parameter SIMULATION           = 0    // Set to 1 to shorten 1-second counter for faster simulation
    )(
    // System Inputs
    input  logic       clk,         // System clock
    input  logic       rst,         // System reset
    input  logic [10:0] x_pos,      // Car's X position
    input  logic [9:0]  y_pos,      // Car's Y position
    input  logic       swtch,       // Pulse indicating a track change, used to reset timers

    // 7-Segment Display Outputs
    output reg         a, b, c, d, e, f, g, // Cathode segments
    output reg         dp,          // Decimal point
    output reg [7:0]   an,          // Anode selection

    // Game State Outputs
    output logic       crossed_line, // 1-cycle pulse when a valid lap is completed
    output logic [6:0] lap_time,     // Current lap time in seconds
    output logic [3:0] ones,         // BCD digit for current lap time (seconds)
    output logic [3:0] tens,         // BCD digit for current lap time (tens of seconds)
    output logic [3:0] hundreds,     // BCD digit for current lap time (hundreds of seconds)
    output logic [3:0] thousands,    // BCD digit for current lap time (thousands of seconds)
    output logic [3:0] prev_ones,    // BCD digit for best lap time (seconds)
    output logic [3:0] prev_tens,    // BCD digit for best lap time (tens of seconds)
    output logic [3:0] prev_hundreds,// BCD digit for best lap time (hundreds of seconds)
    output logic [3:0] prev_thousands// BCD digit for best lap time (thousands of seconds)
    );
    
    // Set 1-second duration based on whether running in simulation or hardware
    localparam int ONE_SEC = SIMULATION ? 10 : 100_000_000;

    //==============================================================================
    // Input Synchronization and Edge Detection
    //==============================================================================
    logic sw_sync0, sw_sync1, sw_prev;
    logic sw_change_pulse; // 1-cycle pulse when swtch changes (rising OR falling)
    
    always_ff @(posedge clk or negedge rst) begin
        if (~rst) begin
            sw_sync0        <= 1'b0;
            sw_sync1        <= 1'b0;
            sw_prev         <= 1'b0;
            sw_change_pulse <= 1'b0;
        end else begin
            // 2-stage synchronizer
            sw_sync0 <= swtch;
            sw_sync1 <= sw_sync0;
    
            // Generate a one-cycle pulse on any change of the synchronized switch signal
            sw_change_pulse <= (sw_sync1 ^ sw_prev);
    
            // Store previous synchronized state for next edge detection
            sw_prev <= sw_sync1;
        end
    end
    
    //==============================================================================
    // Checkpoint and Lap Completion Logic
    //==============================================================================

    // Combinational signals to check if the car is currently inside a checkpoint zone.
    logic inside_cp1, inside_cp2, inside_cp3, inside_finish;
    assign inside_cp1 = (y_pos >= Y_THRESH_LEFT_1 &&
                        y_pos <= Y_THRESH_RIGHT_1 &&
                        x_pos >= X_THRESH_1);
    
    assign inside_cp2 = (x_pos >= X_THRESH_LEFT_2 &&
                        x_pos <= X_THRESH_RIGHT_2 &&
                        y_pos >= Y_THRESH_2);
    
    assign inside_cp3 = (y_pos >= Y_THRESH_LEFT_3 &&
                        y_pos <= Y_THRESH_RIGHT_3 &&
                        x_pos <= X_THRESH_3);
    
    assign inside_finish = (x_pos >= X_THRESH_LEFT_START &&
                           x_pos <= X_THRESH_RIGHT_START &&
                           y_pos <= Y_THRESH_START);
                           
    // State machine to ensure checkpoints are passed in the correct order.
    typedef enum logic [1:0] {
        S1_WAIT_CP1    = 2'd0,
        S2_WAIT_CP2    = 2'd1,
        S3_WAIT_CP3    = 2'd2,
        S4_WAIT_FINISH = 2'd3
    } cp_state_t;
    
    cp_state_t state, next_state;
    
    always_comb begin
        // By default, stay in the current state.
        next_state = state;
    
        case (state)
    
            // ---- WAIT FOR CHECKPOINT 1 ----
            S1_WAIT_CP1: begin
                if (inside_cp1)
                    next_state = S2_WAIT_CP2;
            end
    
            // ---- WAIT FOR CHECKPOINT 2 ----
            S2_WAIT_CP2: begin
                if (inside_cp2)
                    next_state = S3_WAIT_CP3;
            end
    
            // ---- WAIT FOR CHECKPOINT 3 ----
            S3_WAIT_CP3: begin
                if (inside_cp3)
                    next_state = S4_WAIT_FINISH;
            end
    
            // ---- WAIT FOR FINISH LINE ----
            S4_WAIT_FINISH: begin
                if (inside_finish)
                    next_state = S1_WAIT_CP1; // Lap done → restart at CP1
            end
    
        endcase
    end
    
    logic inside_finish_prev;
    
    always_ff @(posedge clk or negedge rst) begin
        if (~rst || sw_change_pulse) begin // Reset FSM on system reset or track change
            state <= S1_WAIT_CP1;
            inside_finish_prev <= 0;
            crossed_line <= 0;
        end else begin
            state <= next_state;
    
            // Generate a one-clock pulse for `crossed_line` when the car enters
            // the finish zone while the FSM is in the S4_WAIT_FINISH state.
            crossed_line <= (state == S4_WAIT_FINISH) &&
                            inside_finish &&
                            !inside_finish_prev;
    
            inside_finish_prev <= inside_finish;
        end
    end

    //==============================================================================
    // Timers and BCD Conversion
    //==============================================================================
    // Generates a `one_sec_pulse` every 100 million clock cycles (1 second).
    logic [26:0] sec_counter;
    logic one_sec_pulse;

    always_ff @(posedge clk or negedge rst) begin
        if (~rst || sw_change_pulse) begin
            sec_counter <= 0;
            one_sec_pulse <= 0;
        end
        else if (sec_counter == ONE_SEC - 1) begin
            sec_counter   <= 0;
            one_sec_pulse <= 1;
        end else begin
            sec_counter   <= sec_counter + 1;
            one_sec_pulse <= 0;
        end
    end
    
    // This block increments the lap time every second and handles BCD conversion.
    // It also compares the completed lap time with the best time and updates if necessary.
    always_ff @(posedge clk or negedge rst) begin
        if (~rst || sw_change_pulse) begin
            lap_time <= 0;
            
            ones     <= 0;
            tens     <= 0;
            thousands <= 0;
            
            prev_thousands <= 9;
            prev_hundreds <= 9;
            prev_tens <= 9;
            prev_ones <= 9;
        end else begin
        
            if (crossed_line) begin
                // A new lap has been completed.
                // Check if the current lap time is a new best time.
                // A time of 0 is not a valid new best time.
                logic is_valid_time, is_new_best;
                is_valid_time = (thousands | hundreds | tens | ones) != 0;
                is_new_best = (thousands < prev_thousands) ||
                              (thousands == prev_thousands && hundreds < prev_hundreds) ||
                              (thousands == prev_thousands && hundreds == prev_hundreds && tens < prev_tens) ||
                              (thousands == prev_thousands && hundreds == prev_hundreds && tens == prev_tens && ones < prev_ones);

                if (is_valid_time && is_new_best) begin
                    prev_thousands <= thousands;
                    prev_hundreds <= hundreds;
                    prev_tens <= tens;
                    prev_ones <= ones;
                end

                // Reset current lap timer and BCD counters.
                lap_time <= 0;
                ones     <= 0;
                tens     <= 0;
                hundreds <= 0;
                thousands <= 0;
            end 
            
            if (one_sec_pulse) begin
                lap_time <= lap_time + 1; // increment every 1 second
                if (ones == 9) begin
                    ones <= 0;
                    if (tens == 9) begin
                        tens <= 0;
                        if (hundreds == 9) begin
                            hundreds <= 0;
                            if (thousands == 9) begin
                                thousands <= 0;
                            end
                            else begin
                                thousands = thousands + 1;
                            end
                        end else begin
                            hundreds <= hundreds + 1;
                        end
                    end else begin
                        tens <= tens + 1;
                    end
                end else begin
                    ones <= ones + 1;
                end
           end
       end 
    end 
    
    //==============================================================================
    // 7-Segment Display Driver Instantiation
    //==============================================================================
    multidigit dgt (
        .clk(clk),
        .rst(rst),          
        .dig7(prev_thousands), .dig6(prev_hundreds), .dig5(prev_tens), .dig4(prev_ones), .dig3(thousands), .dig2(hundreds), .dig1(tens), .dig0(ones), 
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g),
        .dp(dp),
        .an(an)
    );
    
    
endmodule
