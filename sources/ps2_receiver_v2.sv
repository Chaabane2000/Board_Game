    `timescale 1ns / 1ps
    //////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 
    // 
    // Create Date: 11/20/2025 04:23:33 PM
    // Design Name: 
    // Module Name: ps2_receiver
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


    module ps2_receiver (
        input  logic clk,        // fast system clock (50-200 MHz)
        input  logic reset,
        input  logic ps2_clk,
        input  logic ps2_data,

        output logic byte_ready,
        output logic [7:0] byte_out,
        output logic release_flag
    );
        logic ps2_clk_f, ps2_data_f;
        logic [7:0]datacur;
        logic [7:0]dataprev;
        logic [3:0]cnt;
        logic [31:0]keycode;
        logic flag;
        debouncer debounce(
        .clk(clk),
        .I0(ps2_clk),
        .I1(ps2_data),
        .O0(ps2_clk_f),
        .O1(ps2_data_f)
        );

        always_ff@(negedge(ps2_clk_f))begin
            case(cnt)
                0:;//Start bit
                1:datacur[0]<=ps2_data_f;
                2:datacur[1]<=ps2_data_f;
                3:datacur[2]<=ps2_data_f;
                4:datacur[3]<=ps2_data_f;
                5:datacur[4]<=ps2_data_f;
                6:datacur[5]<=ps2_data_f;
                7:datacur[6]<=ps2_data_f;
                8:datacur[7]<=ps2_data_f;
                9:flag<=1'b1;
                10:flag<=1'b0;
            endcase
        
            if(cnt<=9) cnt<=cnt+1;
            else if(cnt==10) cnt<=0;
            
        end
        always_ff @(posedge flag)begin
            keycode[31:24]<=keycode[23:16];
            keycode[23:16]<=keycode[15:8];
            keycode[15:8]<=dataprev;
            keycode[7:0]<=datacur;
            dataprev<=datacur;
        end
        assign byte_out = keycode[7:0];
        assign release_flag = keycode[15:8] == 0'hF0;
    endmodule

