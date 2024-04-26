module ShiftStangaN (
    input [31:0] A,
    input [31:0] N,
    output reg[31:0] rezultat
);

integer i;

always @(*) begin
    for(i = 0; i < 32; i = i + 1) begin
        if(i < N) begin
            rezultat[i] = 0;
        end
        else begin
            rezultat[i] = A[i - N];
        end
    end
end

endmodule

module ShiftDreaptaN (
    input [31:0] A,
    input [31:0] N,
    output reg [31:0] rezultat
);

integer i;

always @(*) begin
    for (i = 31; i >= 0; i = i - 1) begin
        if (31 - i < N) begin
            rezultat[i] = 0;
        end
        else begin
            rezultat[i] = A[i + N];
        end
    end
end

endmodule
