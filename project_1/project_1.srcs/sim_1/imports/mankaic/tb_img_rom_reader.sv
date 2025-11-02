`timescale 1ns / 1ps

module tb_image_rom_reader;

    parameter IMG_WIDTH = 30;
    parameter IMG_HEIGHT = 36;
    parameter COLOR_WIDTH = 12;

    logic clk, rst;
    logic [10:0] curr_x, pos_x;
    logic [9:0]  curr_y, pos_y;
    logic [COLOR_WIDTH-1:0] bg_color;
    logic [3:0] o_pix_r, o_pix_g, o_pix_b;

    // Clock generation (86 MHz)
    initial clk = 0;
    always #5.81 clk = ~clk; // 1/86MHz = 11.63 ns period

    // DUT
    image_rom_reader #(
        .IMG_WIDTH(IMG_WIDTH),
        .IMG_HEIGHT(IMG_HEIGHT),
        .COLOR_WIDTH(COLOR_WIDTH),
        .ADDR_WIDTH(11)
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

    // Initialize signals
    initial begin
        rst = 0;
        pos_x = 10;
        pos_y = 50;
        curr_x = 0;
        curr_y = 0;
        bg_color = 12'h0F0; // green
        #20 rst = 1;

        // Scan through all pixels inside the image
        repeat (IMG_HEIGHT) begin
            repeat (IMG_WIDTH) begin
                curr_x = curr_x + 1;
                #12; // one clock cycle (approx)
            end
            curr_x = 0;
            curr_y = curr_y + 1;
        end

        #100 $finish;
    end

endmodule
