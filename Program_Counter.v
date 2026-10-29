module Program_Counter(
    input clk, reset, enable,
    input [63:0] PC_In,
    output reg [63:0] PC_Out
);
  always @(posedge reset or posedge clk)
  begin
    if(reset)
      PC_Out <= 64'd0;
    else if(enable)
      PC_Out <= PC_In;
  end
endmodule 