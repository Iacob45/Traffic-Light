`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/14/2023 02:19:14 AM
// Design Name: 
// Module Name: semafor
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


module semafor_automat(
     input reset, clock,
     output yellow, green, red
    );
 localparam g1=4'b0000, g2=4'b0001, g3=4'b0010, g4=4'b0011, y=4'b0100, r1=4'b0101, r2=4'b0111, r3=4'b0111, r4=4'b1000, r5=4'b1001;
 reg [3:0] state;
    //CLCq+numarator
  always @(posedge clock)
    if(reset)
        state<=g1;
    else if(state==r5)
        state<=g1;
    else 
        state<=state+1;
        
        
        
        
        
    //CLCy
    reg [2:0] out;
    assign {green, yellow, red}=out;
    
    always @(*)
    case(state)
      g1,g2,g3,g4: out=3'b100;
      y: out=3'b010;
      r1,r2,r3,r4,r5: out=3'b001;
      default: out=3'b000;
      endcase
endmodule
