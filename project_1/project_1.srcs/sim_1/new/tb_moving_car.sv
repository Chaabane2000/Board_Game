`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2025 09:15:21 PM
// Design Name: 
// Module Name: tb_moving_car
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

module tb_moving_car;

    // Parameters
    parameter IMG_WIDTH = 30;
    parameter IMG_HEIGHT = 51;
    parameter COLOR_WIDTH = 12;

    // Inputs
    logic clk;
    logic rst;
    logic [10:0] curr_x;
    logic [9:0]  curr_y;
    logic [10:0] pos_x;
    logic [9:0]  pos_y;
    logic [COLOR_WIDTH-1:0] bg_color;

    // Outputs
    logic [3:0] o_pix_r;
    logic [3:0] o_pix_g;
    logic [3:0] o_pix_b;

    // Instantiate DUT
    moving_car #(
        .IMG_WIDTH(IMG_WIDTH),
        .IMG_HEIGHT(IMG_HEIGHT),
        .COLOR_WIDTH(COLOR_WIDTH)
    ) dut (
        .clk(clk),
        .rst(rst),
        .curr_x(curr_x),
        .curr_y(curr_y),
        .pos_x(pos_x),
        .pos_y(pos_y),
        .bg_color(bg_color),
        .o_pix_r(o_pix_r),
        .o_pix_g(o_pix_g),
        .o_pix_b(o_pix_b)
    );

    // Clock
    initial clk = 0;
    always #5 clk = ~clk; // 100 MHz

    // File for logging
    integer log_file;
    
    // Simulation control
    initial begin
        log_file = $fopen("moving_car_debug.txt","w");
        if (!log_file) begin
            $display("ERROR: Cannot open file");
            $finish;
        end

        // Initialize inputs
        rst = 0;
        curr_x = 0;
        curr_y = 0;
        pos_x = 520;
        pos_y = 300;
        bg_color = 12'h000;

        #20;
        rst = 1;

        // Sweep across the car area plus a small border
        for (int y = 295; y < 355; y=y+1) begin
            for (int x = 515; x < 555; x=x+1) begin
                curr_x = x;
                curr_y = y;
                @(posedge clk);
                $fwrite(log_file, "time=%0t, curr=(%0d,%0d), pos=(%0d,%0d), read_mem_en=%b, addr=%0d, pix=%h\n",
                    $time, curr_x, curr_y, pos_x, pos_y, 
                    ((curr_x >= pos_x) && (curr_y >= pos_y) && (curr_x < pos_x+IMG_WIDTH) && (curr_y < pos_y+IMG_HEIGHT)),
                    ((curr_y - pos_y)*IMG_WIDTH + (curr_x - pos_x)),
                    {o_pix_r,o_pix_g,o_pix_b});
            end
        end

        $fclose(log_file);
        $display("✅ Simulation done, check moving_car_debug.txt");
        $finish;
    end

endmodule
