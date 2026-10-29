module MEMRegister(
    input wire [63:0] PC_in,
    input wire [63:0] aluResult_in,
    input wire [63:0] data2_in,
    input wire [4:0] rd_in,
    input wire Branch_in,
    input wire MemRead_in,
    input wire MemtoReg_in,
    input wire MemWrite_in,
    input wire RegWrite_in,
    input wire zero_in,
    input wire clk,
    input wire reset,
    input wire flush,

    output reg [63:0] PC_out,
    output reg [63:0] aluResult_out,
    output reg [63:0] data2_out,
    output reg [4:0] rd_out,
    output reg Branch_out,
    output reg MemRead_out,
    output reg MemtoReg_out,
    output reg MemWrite_out,
    output reg RegWrite_out,
    output reg zero_out
);

always @(posedge clk or posedge reset)
begin
    if (reset) begin
        PC_out <= 64'b0;
        aluResult_out <= 64'b0;
        data2_out <= 64'b0;
        rd_out <= 5'b0;
        Branch_out <= 1'b0;
        MemRead_out <= 1'b0;
        MemtoReg_out <= 1'b0;
        MemWrite_out <= 1'b0;
        RegWrite_out <= 1'b0;
        zero_out <= 1'b0;
    end
    else if (flush) begin
        PC_out <= 64'b0;
        aluResult_out <= 64'b0;
        data2_out <= 64'b0;
        rd_out <= 5'b0;
        Branch_out <= 1'b0;
        MemRead_out <= 1'b0;
        MemtoReg_out <= 1'b0;
        MemWrite_out <= 1'b0;
        RegWrite_out <= 1'b0;
        zero_out <= 1'b0;
    end
    else begin
        PC_out <= PC_in;
        aluResult_out <= aluResult_in;
        data2_out <= data2_in;
        rd_out <= rd_in;
        Branch_out <= Branch_in;
        MemRead_out <= MemRead_in;
        MemtoReg_out <= MemtoReg_in;
        MemWrite_out <= MemWrite_in;
        RegWrite_out <= RegWrite_in;
        zero_out <= zero_in;
    end
end

endmodule