`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2025 02:18:45 PM
// Design Name: 
// Module Name: tb_score2
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

`timescale 1ns / 1ps

module tb_score2;

    // Clock + reset
    logic clk = 0;
    logic rst = 0;
    always #5 clk = ~clk;   // 100 MHz simulation clock

    // DUT inputs
    logic [10:0] x_pos;
    logic [9:0]  y_pos;
    logic swtch = 0;

    // DUT outputs
    logic crossed_line;
    logic [6:0] lap_time;
    logic [3:0] ones, tens, hundreds, thousands;
    logic [3:0] prev_ones, prev_tens, prev_hundreds, prev_thousands;

    // Checkpoint signals (outputs from DUT for simulation)
    logic inside_cp1, inside_cp2, inside_cp3, inside_finish;

    // Dummy Seven-seg outputs (ignored)
    logic a,b,c,d,e,f,g,dp;
    logic [7:0] an;

    // Instantiate DUT
    score #(.SIMULATION(1)) dut (
        .clk(clk), .rst(rst),
        .x_pos(x_pos), .y_pos(y_pos),
        .swtch(swtch),
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g),
        .dp(dp), .an(an),
        .crossed_line(crossed_line),
        .lap_time(lap_time),
        .ones(ones), .tens(tens), .hundreds(hundreds), .thousands(thousands),
        .prev_ones(prev_ones), .prev_tens(prev_tens), .prev_hundreds(prev_hundreds),
        .prev_thousands(prev_thousands),
        .inside_cp1(inside_cp1),
        .inside_cp2(inside_cp2),
        .inside_cp3(inside_cp3),
        .inside_finish(inside_finish)
    );

    // ---- TASKS TO SIMULATE MOVEMENT ----
    task go_cp1;
        begin
            $display(">>> ENTER CP1");
            x_pos = 820; y_pos = 420;
            repeat (10) @(posedge clk);
        end
    endtask

    task go_cp2;
        begin
            $display(">>> ENTER CP2");
            x_pos = 580; y_pos = 520;
            repeat (10) @(posedge clk);
        end
    endtask

    task go_cp3;
        begin
            $display(">>> ENTER CP3");
            x_pos = 480; y_pos = 430;
            repeat (10) @(posedge clk);
        end
    endtask

    task go_finish;
        begin
            $display(">>> ENTER FINISH");
            x_pos = 590; y_pos = 290;
            repeat (10) @(posedge clk);
        end
    endtask

    // ---- MAIN TEST ----
    initial begin
        // Initialize inputs
        x_pos = 0; y_pos = 0; swtch = 0;

        // Apply reset
        rst = 0;
        repeat (10) @(posedge clk);
        rst = 1;
        $display("RESET RELEASED");

        // Simulate 3 laps
        repeat (3) begin
            go_cp1();
            go_cp2();
            go_cp3();
            go_finish();
            repeat (10) @(posedge clk); // wait a bit before next lap
        end

        $display("==== TEST COMPLETE ====");
        $finish;
    end

    // ---- MONITOR OUTPUTS ----
    initial begin
        $display("T | State | x y | CP1 CP2 CP3 FINISH | crossed | Time(thousands hundreds tens ones)");
        $monitor("%0t | %0d | %0d %0d | %b %b %b %b | %b | %0d %0d %0d %0d",
                 $time, dut.state,
                 x_pos, y_pos,
                 inside_cp1, inside_cp2, inside_cp3, inside_finish,
                 crossed_line,
                 thousands, hundreds, tens, ones);
    end

endmodule
