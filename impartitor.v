//Restoring Division

module impartitor(
    input [31:0] A,
    input [31:0] B,
    output reg [31:0] cat,
    output reg [31:0] rest
);

reg [31:0] AA;
reg [31:0] Q;
reg [31:0] M;

integer i;

always @(*) begin
    AA = 0;
    Q = A;
    M = B;
    for(i = 0; i < 32; i = i + 1) begin
        {AA[31:0], Q[31:1]} = {AA[30:0], Q[31:0]};
        Q[0] = 0;
        AA = AA - M;
        if(AA[16] == 0) begin
            Q[0] = 1;
        end
        else if(AA[31] == 1)begin
            AA = AA + M;
        end
    end

    cat = Q;
    rest = AA;
end

endmodule
