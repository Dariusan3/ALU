//Keep Partial Product Fixed

module inmultitor(
    input [31:0] A,
    input [31:0] B,
    output reg [63:0] produs
);

reg [63:0] produse_partiale [31:0];

integer i, j;

always @(*) begin
    for(i = 0; i < 32; i = i + 1) begin
        produse_partiale[i] = {32{B[i]}} & (A << i);
    end
end

always @(*) begin
    produs = 64'b0;
    for(j = 0; j < 32; j = j + 1) begin
        produs = produs + produse_partiale[j];
    end
end

endmodule
