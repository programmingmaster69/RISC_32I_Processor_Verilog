module extractor(
  input wire [31:0] ins,
  output reg [63:0] imm_data
);
  always @*
  begin
    imm_data = 64'b0;
    case (ins[6:0])
      7'b0000011: imm_data = {{52{ins[31]}}, ins[31:20]};
      7'b0100011: imm_data = {{52{ins[31]}}, ins[31:25], ins[11:7]};
      7'b1100011: imm_data = {{51{ins[31]}}, ins[31], ins[7], ins[30:25], ins[11:8], 1'b0};
      default: imm_data = 64'b0;
    endcase
  end
endmodule 