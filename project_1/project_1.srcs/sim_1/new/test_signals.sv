`timescale 1ns/1ps

module test_signals();

  reg clk = 0;
  wire [3:0] pix_r;
  wire [3:0] pix_g;
  wire [3:0] pix_b;
  wire hsync;
  wire vsync;
  //wire [10:0] curr_x;
  //wire [9:0] curr_y;

  // module instantiation
  game_top uut (.clk(clk), .pix_r(pix_r), .pix_g(pix_g), .pix_b(pix_b), .hsync(hsync), .vsync(vsync));
  
  always #5 clk = ~clk;  // 100 MHz clock (10 ns period)
  
  initial
  begin

    // test vectors
    #20000 $finish;
  end

endmodule
