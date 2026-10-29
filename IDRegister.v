module IDRegister(
    input wire [63:0] PC_in,
    input wire [31:0] ins_in,
    input wire clk,
    input wire reset,
    input wire enable,
    input wire flush,

    output reg [63:0] PC_out,
    output reg [31:0] ins_out
);

always @(posedge clk or posedge reset)
begin
    if (reset) begin
        ins_out <= 32'b0;
        PC_out  <= 64'b0;
    end
    else if (flush) begin
        ins_out <= 32'b0;
        PC_out  <= 64'b0;
    end
    else if (enable) begin
        PC_out  <= PC_in;
        ins_out <= ins_in;
    end
end

endmodule