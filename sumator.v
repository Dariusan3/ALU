module sumator(
    input [31:0] A,
    input [31:0] B,
    output [31:0] suma
);

reg transport;
reg [31:0] rez;
integer i;

always @(*) begin
    transport = 0;
    for(i = 0; i < 32; i = i + 1) begin
        rez[i] = A[i] ^ B[i] ^ transport;
        transport = (A[i] & B[i]) | (A[i] & transport) | (B[i] & transport);
    end
end 

assign suma = rez;

endmodule
