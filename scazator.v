module scazator(
    input [31:0] A,
    input [31:0] B,
    output reg[31:0] diferenta
);

reg imprumut;
integer i;

always @(*) begin
    imprumut = 0;
    for(i = 0; i < 32; i = i + 1) begin
        diferenta[i] = A[i] ^ B[i] ^ imprumut;
        imprumut = (~A[i] & B[i]) | (~A[i] & imprumut) | (B[i] & imprumut);
    end
end

endmodule