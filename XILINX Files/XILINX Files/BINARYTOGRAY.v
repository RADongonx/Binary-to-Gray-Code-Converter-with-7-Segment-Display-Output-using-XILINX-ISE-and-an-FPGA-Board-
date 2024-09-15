`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:39 10/17/2023 
// Design Name: 
// Module Name:    BINARYTOGRAY 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BINARYTOGRAY(
    input wire clk,
    input wire rst,
    input wire [3:0] binary,
    output reg [6:0] seven_segment
    );

	reg [3:0] gray_reg;
	reg [3:0] gray_next;

	
  // Shift Register
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      gray_reg <= 4'b0;
    end else begin
      gray_reg <= gray_next;
    end
  end

  // Gray Code Generation
  always @(*) begin
    gray_next[0] = binary[0];
    gray_next[1] = binary[0] ^ binary[1];
    gray_next[2] = binary[1] ^ binary[2];
    gray_next[3] = binary[2] ^ binary[3];
  end

  // 7-Segment Display Decoder 
  always @(posedge clk) begin
    case (gray_reg)
      4'b0000: seven_segment = 7'b0111111; // 0 
      4'b0001: seven_segment = 7'b1110001; // 1 
      4'b0010: seven_segment = 7'b1111001; // 2 
      4'b0011: seven_segment = 7'b0000110; // 3 
      4'b0100: seven_segment = 7'b1111100; // 4 
      4'b0101: seven_segment = 7'b1001111; // 5 
      4'b0110: seven_segment = 7'b1011011; // 6 
      4'b0111: seven_segment = 7'b1011110; // 7 
      4'b1000: seven_segment = 7'b1111111; // 8
      4'b1001: seven_segment = 7'b0000111; // 9 
      4'b1010: seven_segment = 7'b1111101; // A
      4'b1011: seven_segment = 7'b1111100; // B
      4'b1100: seven_segment = 7'b1100110; // C
      4'b1101: seven_segment = 7'b1011110; // D
      4'b1110: seven_segment = 7'b1110111; // E
      4'b1111: seven_segment = 7'b1101101; // F 
      default: seven_segment = 7'b1111111; // Display nothing (all segments off)
    endcase
  end
endmodule

