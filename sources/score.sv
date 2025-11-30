`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2025 07:17:08 PM
// Design Name: 
// Module Name: score
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


module score#(
    parameter X_THRESH_LEFT_START = 586,
    parameter X_THRESH_RIGHT_START = 599, 
    parameter Y_THRESH_START = 300,
    parameter X_THRESH_1 = 800,
    parameter Y_THRESH_LEFT_1 = 400,
    parameter Y_THRESH_RIGHT_1 = 450,
    parameter X_THRESH_LEFT_2 = 550,
    parameter X_THRESH_RIGHT_2 = 599, 
    parameter Y_THRESH_2 = 500,
    parameter X_THRESH_3 = 500,
    parameter Y_THRESH_LEFT_3 = 400,
    parameter Y_THRESH_RIGHT_3 = 450,
    parameter CAR_HEIGHT  = 51,
    parameter SIMULATION = 0
    )(
    input logic clk,
    input logic rst,
    input logic [10:0] x_pos,
    input logic [9:0] y_pos,
    input logic swtch, 
    //input [3:0] dig7, dig6, dig5, dig4, dig3, dig2, dig1, dig0, 
    output reg a, b, c, d, e, f, g,
    output reg dp,
    output reg [7:0] an,
    
    //output logic crossed_line,          // for simulation
    //output logic one_sec_pulse,         // for simulation
    //output logic [26:0] sec_counter = 0,// for simulation
    //output logic inside_cp1, inside_cp2, inside_cp3, inside_finish, //for simulation
    output logic crossed_line,
    output logic [6:0] lap_time,
    output logic [3:0] ones,
    output logic [3:0] tens,
    output logic [3:0] hundreds,
    output logic [3:0] thousands, 
    output logic [3:0] prev_ones,
    output logic [3:0] prev_tens,
    output logic [3:0] prev_hundreds,
    output logic [3:0] prev_thousands
    );
    
    localparam int ONE_SEC = SIMULATION ? 10 : 100_000_000;
    //localparam int ONE_SEC = 10;
    //logic crossed_line;
    logic over_now, prev_over;
    logic over_now1, over_now2, over_now3;
    logic cross_finish, cross_1, cross_2, cross_3;
    //logic crossed_line_start;
    
    // ---- sync + edge detect for external switch 'swtch' ----
    logic sw_sync0, sw_sync1, sw_prev;
    logic sw_change_pulse; // 1-cycle pulse when swtch changes (rising OR falling)
    
    always_ff @(posedge clk or negedge rst) begin
        if (~rst) begin
            sw_sync0 <= 1'b0;
            sw_sync1 <= 1'b0;
            sw_prev  <= 1'b0;
            sw_change_pulse <= 1'b0;
        end else begin
            // 2-stage synchronizer
            sw_sync0 <= swtch;
            sw_sync1 <= sw_sync0;
    
            // one-cycle pulse on any edge
            sw_change_pulse <= (sw_sync1 ^ sw_prev);
    
            // store previous synchronized state for next edge detection
            sw_prev <= sw_sync1;
        end
    end
    
    assign cross_finish = x_pos >= X_THRESH_LEFT_START && x_pos <= X_THRESH_RIGHT_START && y_pos <= Y_THRESH_START;
    assign cross_1 = y_pos >= Y_THRESH_LEFT_1 && y_pos <= Y_THRESH_RIGHT_1 && x_pos >= X_THRESH_1;
    assign cross_2 = x_pos >= X_THRESH_LEFT_2 && x_pos <= X_THRESH_RIGHT_2 && y_pos >= Y_THRESH_2;
    assign cross_3 = y_pos >= Y_THRESH_LEFT_3 && y_pos <= Y_THRESH_RIGHT_3 && x_pos <= X_THRESH_3;
    
    always_ff @(posedge clk or negedge rst) begin
        if (~rst || sw_change_pulse) begin
            //over_now0 <= 0;
            over_now1 <= 0;
            over_now2 <= 0;
            over_now3 <= 0;
            prev_over <= 0;
            crossed_line <= 0;
        end else begin
    
            // Step 1: detect passing start line
            /*if (!over_now0 && cross_finish)
            begin
                over_now0 <= 1;  // latch this
            end*/
    
            // Step 2: detect passing checkpoints
            if (!over_now1 && cross_1)
            begin
                over_now1 <= 1;  
            end
            /*else if (!over_now1 &&
                (y_pos >= Y_THRESH_LEFT_1 && y_pos <= Y_THRESH_RIGHT_1 && x_pos >= X_THRESH_1))
            begin
                //over_now0 <= 0;
                over_now1 <= 0;  
                over_now2 <= 0;
                over_now3 <= 0; 
            end*/
            
            if (over_now1 && !over_now2 && cross_2)
            begin
                over_now2 <= 1;  
            end
            /*else if (!(over_now1) && !over_now2 &&
                (x_pos >= X_THRESH_LEFT_2 && x_pos <= X_THRESH_RIGHT_2 && y_pos >= Y_THRESH_2))
            begin
                //over_now0 <= 0;
                over_now1 <= 0;  
                over_now2 <= 0;
                over_now3 <= 0; 
            end*/
            
            if (over_now1 && over_now2 && !over_now3 && cross_3)
            begin
                over_now3 <= 1;  
            end
            /*else if (!(over_now1 && over_now2) && !over_now3 &&
                (y_pos >= Y_THRESH_LEFT_3 && y_pos <= Y_THRESH_RIGHT_3 && x_pos <= X_THRESH_3))
            begin
                //over_now0 <= 0;
                over_now1 <= 0;  
                over_now2 <= 0;
                over_now3 <= 0; 
            end*/
            
            // Step 3: detect finish line 
            if (over_now1 && over_now2 && over_now3 && cross_finish)
            begin
                crossed_line <= (prev_over == 0);  // pulse on first frame inside
                prev_over    <= 1;
            end 
            /*else if (!(over_now1 && over_now2 && over_now3) &&
                (x_pos >= X_THRESH_LEFT_START && x_pos <= X_THRESH_RIGHT_START && y_pos <= Y_THRESH_START))
            begin
                //over_now0 <= 0;
                over_now1 <= 0;  
                over_now2 <= 0;
                over_now3 <= 0; 
            end*/
            else begin
                crossed_line <= 0;
                prev_over    <= 0;
            end
    
            // Step 4: when lap completes, reset checkpoints
            if (crossed_line) begin
                //over_now0 <= 0;
                over_now1 <= 0;
                over_now2 <= 0;
                over_now3 <= 0;
            end
            
            if (over_now1 && cross_finish)
            begin
                over_now1 <= 0;
            end
            if (over_now2 && cross_1)
            begin
                over_now2 <= 0;
            end
            if (over_now3 && cross_2)
            begin
                over_now3 <= 0;
            end
            /*if (over_now0 && cross_3)
            begin
                over_now0 <= 0;
            end*/
        end
    end
    
    
    //threshold checks
    //logic inside_cp1, inside_cp2, inside_cp3, inside_finish;
    /*assign inside_cp1 = (y_pos >= Y_THRESH_LEFT_1 &&
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
                           
    typedef enum logic [1:0] {
        S1_WAIT_CP1    = 2'd0,
        S2_WAIT_CP2    = 2'd1,
        S3_WAIT_CP3    = 2'd2,
        S4_WAIT_FINISH = 2'd3
    } cp_state_t;
    
    cp_state_t state, next_state;
    
    always_comb begin
        next_state = state;
    
        case (state)
    
            // ---- WAIT FOR CHECKPOINT 1 ----
            S1_WAIT_CP1: begin
                if (inside_cp1)
                    next_state = S2_WAIT_CP2;
                else if (inside_cp2 || inside_cp3 || inside_finish)
                    next_state = S1_WAIT_CP1; // Invalid order, reset
            end
    
            // ---- WAIT FOR CHECKPOINT 2 ----
            S2_WAIT_CP2: begin
                if (inside_cp2)
                    next_state = S3_WAIT_CP3;
                else if (inside_cp1 || inside_cp3 || inside_finish)
                    next_state = S1_WAIT_CP1; // Wrong order → reset
            end
    
            // ---- WAIT FOR CHECKPOINT 3 ----
            S3_WAIT_CP3: begin
                if (inside_cp3)
                    next_state = S4_WAIT_FINISH;
                else if (inside_cp1 || inside_cp2 || inside_finish)
                    next_state = S1_WAIT_CP1;
            end
    
            // ---- WAIT FOR FINISH LINE ----
            S4_WAIT_FINISH: begin
                if (inside_finish)
                    next_state = S1_WAIT_CP1; // Lap done → restart at CP1
                else if (inside_cp1 || inside_cp2 || inside_cp3)
                    next_state = S1_WAIT_CP1; // Wrong order
            end
    
        endcase
    end
    
    logic inside_finish_prev;
    
    always_ff @(posedge clk or negedge rst) begin
        if (!rst) begin
            state <= S1_WAIT_CP1;
            inside_finish_prev <= 0;
            crossed_line <= 0;
        end else begin
            state <= next_state;
    
            // Lap completion pulse (one clock)
            crossed_line <= (state == S4_WAIT_FINISH) &&
                            inside_finish &&
                            !inside_finish_prev;
    
            inside_finish_prev <= inside_finish;
        end
    end*/

    // Make 1 second pulse
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
    
    // Lap timer
    //logic [3:0] ones = 0, tens = 0, hundreds = 0;
    //logic [6:0] lap_time; 
    //logic first_cross_done;   // 0 = ignore first crossing, 1 = start counting
    
    always_ff @(posedge clk or negedge rst) begin
        if (~rst || sw_change_pulse) begin
            lap_time <= 0;
            //first_cross_done <= 0;
            
            ones     <= 0;
            tens     <= 0;
            hundreds <= 0;
            thousands <= 0;
            
            prev_thousands <= 9;
            prev_hundreds <= 9;
            prev_tens <= 9;
            prev_ones <= 9;
        end else begin
        
            if (crossed_line) begin
                //if (first_cross_done == 0) begin
                    // First crossing after reset -> IGNORE it
                //   first_cross_done <= 1;
                //end else begin
                lap_time <= 0;
                ones     <= 0;
                tens     <= 0;
                hundreds <= 0;
                thousands <= 0;
                //end
                
                if ((thousands!=0 || hundreds != 0 || tens != 0 || ones != 0) && ((thousands < prev_thousands) || (thousands == prev_thousands && hundreds < prev_hundreds) || (thousands == prev_thousands && hundreds == prev_hundreds && tens < prev_tens) || (thousands == prev_thousands && hundreds == prev_hundreds && tens == prev_tens && ones < prev_ones))) begin
                    prev_thousands <= thousands;
                    prev_hundreds <= hundreds;
                    prev_tens <= tens;
                    prev_ones <= ones;
                end
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
    
    // Display
    
    multidigit dgt (
        .clk(clk),
        .rst(rst),          
        .dig7(prev_thousands), .dig6(prev_hundreds), .dig5(prev_tens), .dig4(prev_ones), .dig3(thousands), .dig2(hundreds), .dig1(tens), .dig0(ones), 
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g),
        .dp(dp),
        .an(an)
    );
    
    
endmodule
