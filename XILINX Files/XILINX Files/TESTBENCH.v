`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:38:10 10/17/2023
// Design Name:   BINARYTOGRAY
// Module Name:   C:/Xilinx/DOE/TESTBENCH.v
// Project Name:  DOE
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BINARYTOGRAY
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TESTBENCH;

	// Inputs
	reg clk;
	reg rst;
	reg [3:0] binary;

	// Outputs
	wire [6:0] seven_segment;

	// Instantiate the Binary-to-Gray Code Converter module
  binary_to_gray_with_display converter (
    .clk(clk),
    .rst(rst),
    .binary(binary),
    .seven_segment(seven_segment)
  );

  // Clock Generation
  always begin
    #5 clk = ~clk;
  end

  // Testbench Stimulus
  initial begin
    clk = 0;
    rst = 0;
    binary = 4'b0000;

    // Apply reset and binary inputs
    rst = 1;
    #10 rst = 0;

    // Test various binary inputs
    #10 binary = 4'b0010;
    #10 binary = 4'b0110;
    #10 binary = 4'b1010;
    #10 binary = 4'b1111;

    $finish;
  end
      
endmodule

