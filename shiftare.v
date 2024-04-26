module shiftareStanga(
    input [31:0] A,
    output [31:0] rezultat
);

integer i;
reg [31:0] rez;

always @(*) begin
    for(i = 0; i < 32; i = i + 1) begin
        if(i == 31) begin
            rez[i] = 0;
        end
        else begin
            rez[i] = A[i + 1];
        end
    end
end

assign rezultat = rez;

endmodule

module shiftareDreapta(
    input [31:0] A,
    output [31:0] rezultat
);

integer i;
reg [31:0] rez;

always @(*) begin
    for(i = 31; i >= 0; i = i - 1) begin
        if(i == 31) begin
            rez[i] = 0;
        end
        else begin
            rez[i] = A[i + 1];
        end
    end
end

assign rezultat = rez;

endmodule