`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: vga_out
// Description: This module generates the necessary timing signals (hsync, vsync)
//              for a VGA display. It also outputs the current pixel coordinates
//              (curr_x, curr_y) to be used by upstream graphics rendering modules.
//
//              Crucially, this module delays the hsync, vsync, and video_active
//              signals to compensate for the latency of the graphics pipeline.
//              This ensures that the pixel color data arrives at the VGA output
//              at the same time as its corresponding timing signals, preventing
//              image shearing or shifting.
//////////////////////////////////////////////////////////////////////////////////

module vga_out(
    // Inputs
    input  logic       clk,        // Pixel clock input
    input  logic [3:0] pix_in_r,   // Input red pixel data from the graphics pipeline
    input  logic [3:0] pix_in_g,   // Input green pixel data from the graphics pipeline
    input  logic [3:0] pix_in_b,   // Input blue pixel data from the graphics pipeline

    // Outputs
    output logic [3:0] pix_r,      // Final, gated red pixel data to the VGA DAC
    output logic [3:0] pix_g,      // Final, gated green pixel data to the VGA DAC
    output logic [3:0] pix_b,      // Final, gated blue pixel data to the VGA DAC
    output logic       hsync,      // Final, delayed horizontal sync signal
    output logic       vsync,      // Final, delayed vertical sync signal
    output reg [10:0]  curr_x,     // Current, undelayed horizontal pixel coordinate (for graphics pipeline)
    output reg [9:0]   curr_y      // Current, undelayed vertical pixel coordinate (for graphics pipeline)
    );
    
    // =========================================================================
    // 1. Configuration
    // =========================================================================
    // This parameter must match the total latency (in clock cycles) of the
    // graphics rendering pipeline that feeds into this module.
    //
    // --- Tuning Guide ---
    // - If the image is shifted RIGHT (black bar on the left): PIPELINE_DELAY is too HIGH. Decrease it.
    // - If the image is shifted LEFT (or wraps around):    PIPELINE_DELAY is too LOW. Increase it.
    localparam PIPELINE_DELAY = 6; 

    // Counter definitions
    logic [10:0] hcount = 11'b0000_0000_000;
    logic [9:0] vcount = 10'b0000_0000_00;
    
    // =========================================================================
    // 2. Raw (Pre-Delay) Signal Generation
    // =========================================================================
    logic hsync_raw, vsync_raw, video_active_raw;

    // Generate raw timing signals based on the current counter values.
    assign hsync_raw = (hcount <= 135) ? 1'b0 : 1'b1;
    assign vsync_raw = (vcount <= 2)   ? 1'b1 : 1'b0;

    // Determine the active video area where pixels should be drawn.
    assign video_active_raw = (hcount >= 336 && hcount <= 1615 && 
                               vcount >= 27  && vcount <= 826);

    // =========================================================================
    // 3. Pipeline Shift Registers
    // =========================================================================
    logic [PIPELINE_DELAY-1:0] hsync_sr;
    logic [PIPELINE_DELAY-1:0] vsync_sr;
    logic [PIPELINE_DELAY-1:0] active_sr;

    always_ff @(posedge clk) begin
        // --- VGA Counters ---
        if (hcount == 1679) begin
            hcount <= 11'b0000_0000_000;
            if (vcount == 827)
                vcount <= 10'b0000_0000_00;
            else
                vcount <= vcount + 1'b1;
        end else begin
            hcount <= hcount + 1'b1;
        end

        // --- Coordinate Generation ---
        // These undelayed coordinates are sent to the graphics modules.
        if (hcount >= 336 && hcount <= 1615)
            curr_x <= hcount - 336;
        else
            curr_x <= 11'b1000_0000_000; // Large value implies off-screen

        if (vcount >= 27 && vcount <= 826)
            curr_y <= vcount - 27;
        else
            curr_y <= 10'b1000_0000_00;

        // --- Pipeline Delay Logic ---
        // The raw signals are shifted into registers to delay them.
        hsync_sr  <= {hsync_sr[PIPELINE_DELAY-2:0],  hsync_raw};
        vsync_sr  <= {vsync_sr[PIPELINE_DELAY-2:0],  vsync_raw};
        active_sr <= {active_sr[PIPELINE_DELAY-2:0], video_active_raw};
    end
    
    // =========================================================================
    // 4. Delayed Outputs
    // =========================================================================
    
    // Output the final sync signals from the end of the delay pipeline.
    assign hsync = hsync_sr[PIPELINE_DELAY-1];
    assign vsync = vsync_sr[PIPELINE_DELAY-1];

    // Use the delayed active signal to gate the pixel outputs. This ensures that
    // the pixel data is only driven to the output during the active display area,
    // perfectly synchronized with the delayed hsync and vsync signals.
    logic video_active_delayed;
    assign video_active_delayed = active_sr[PIPELINE_DELAY-1];

    assign pix_r = (video_active_delayed) ? pix_in_r : 4'b0000;
    assign pix_g = (video_active_delayed) ? pix_in_g : 4'b0000;
    assign pix_b = (video_active_delayed) ? pix_in_b : 4'b0000;
    
endmodule