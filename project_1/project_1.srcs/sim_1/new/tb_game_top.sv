`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2025 04:30:57 PM
// Design Name: 
// Module Name: tb_game_top
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

module tb_game_top;

  // Inputs
  logic clk;
  logic rst;
  logic in_up, in_down, in_left, in_right;

  // Outputs
  logic [3:0] pix_r, pix_g, pix_b;
  logic hsync, vsync;
  
  // Simulation coordinates
  //logic [10:0] curr_x; 
  //logic [9:0] curr_y;

  // Instantiate DUT
  game_top dut (
    .clk(clk),
    .rst(rst),
    .in_up(in_up),
    .in_down(in_down),
    .in_left(in_left),
    .in_right(in_right),
    .pix_r(pix_r),
    .pix_g(pix_g),
    .pix_b(pix_b),
    .hsync(hsync),
    .vsync(vsync)
    //.curr_x(curr_x),
    //.curr_y(curr_y)
  );

  // Clock generation (100 MHz)
  initial clk = 0;
  always #5 clk = ~clk;

  // File handle
  integer vga_file;
  int total_pixels = 1024000;
  int i;

  // Simulation control
  initial begin
    // Open output file
    vga_file = $fopen("vga_output.txt", "w");
    if (!vga_file) begin
      $display("ERROR: Could not open vga_output.txt");
      $finish;
    end

    // Initialize signals
    rst = 0;
    in_up = 0;
    in_down = 0;
    in_left = 0;
    in_right = 0;

    // Hold reset low for a bit
    #100;
    rst = 1;

    // Run for a limited time (e.g., one VGA frame)
    // You can adjust this - here, we assume VGA 1280x800
    for (i = 0; i < total_pixels; i++) begin
      @(posedge clk);
      // Log pixel output values
      $fwrite(vga_file, "%0d %0d %0d %0d %0d\n",
              dut.curr_x, dut.curr_y,
              dut.pix_r, dut.pix_g, dut.pix_b);
    end

    $fclose(vga_file);
    $display("✅ VGA pixel dump complete: vga_output.txt");
    $finish;
  end

endmodule


