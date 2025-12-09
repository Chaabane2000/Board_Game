`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: fifo2audpwm
// Description: This module converts an 8-bit parallel digital audio sample into
//              a Pulse-Width Modulated (PWM) signal. It uses a high-frequency
//              counter to generate a carrier wave that is well above the range
//              of human hearing (~390kHz), effectively creating an analog voltage
//              level at the output pin when filtered.
//
//              While the interface includes signals named for a FIFO, it does not
//              implement FIFO logic itself. It directly consumes the parallel data
//              from `fifo_rd_data` on every clock cycle.
//////////////////////////////////////////////////////////////////////////////////

module fifo2audpwm #(
    parameter DATA_WIDTH      = 8,  // Resolution of the PWM signal (and width of the audio sample)
    parameter FIFO_DATA_WIDTH = 32  // Width of the input data bus
) (
    // System Inputs
    input  wire clk,          // System Clock (e.g., 100MHz)
    input  wire rst,          // System reset
    
    // Audio Outputs
    output wire aud_pwm,     // PWM audio output signal
    output wire aud_sd,      // Audio enable (shutdown) signal
    
    // FIFO-like Interface
    input  wire [FIFO_DATA_WIDTH-1:0] fifo_rd_data, // Parallel data input containing the audio sample
    input  wire                       fifo_rd_en,   // Read enable signal (behavior controlled by parent)
    input  wire                       fifo_empty    // FIFO empty flag (not used in this module)
);

    //==============================================================================
    // 1. PWM Generation
    //==============================================================================
    // A free-running counter that creates the triangular/sawtooth wave for the PWM.
    // With a 100MHz clock and 8-bit data, the carrier frequency is:
    // 100MHz / 2^8 = 100MHz / 256 = ~390.6 kHz (ultrasonic and thus inaudible).
    reg [DATA_WIDTH-1:0] count = 0;

    always_ff @(posedge clk or posedge rst) begin
        if (rst)
            count <= '0;
        else
            count <= count + 1;
    end

    // The PWM output is high as long as the counter is less than the sample value.
    // This creates a duty cycle proportional to the audio sample's amplitude.
    assign aud_pwm = (count < fifo_rd_data[DATA_WIDTH-1:0]);
    
    //==============================================================================
    // 2. Control Signals
    //==============================================================================
    // The audio shutdown is permanently disabled (i.e., the amplifier is always enabled).
    assign aud_sd = 1'b1; 

endmodule