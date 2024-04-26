module alu(
    input [31:0] A,
    input [31:0] B,
    input [3:0] operatie,
    output reg [31:0] rezultat,
    output reg [31:0] rest_rezultat,
    output reg zero
);

// wire A[31:0], B[31:0];
wire [31:0] rezultat_sumator;
wire [31:0] rezultat_scazator;
wire [31:0] rezultat_inmultitor;
wire [31:0] rezultat_impartitor_cat;
wire [31:0] rezultat_impartitor_rest;
wire [31:0] rezultat_shift_stanga;
wire [31:0] rezultat_shift_dreapta;
wire [31:0] rezultat_and;
wire [31:0] rezultat_or;
wire [31:0] rezultat_xor;

sumator sumator_inst( //0
    .A(A),
    .B(B),
    .suma(rezultat_sumator)
);

scazator scazator_inst( //1
    .A(A),
    .B(B),
    .diferenta(rezultat_scazator)
);

inmultitor inmultitor_inst( //2
    .A(A),
    .B(B),
    .produs(rezultat_inmultitor)
);

impartitor impartitor_inst( //3
    .A(A),
    .B(B),
    .cat(rezultat_impartitor_cat),
    .rest(rezultat_impartitor_rest)
);

AND and_inst( //4
    .A(A),
    .B(B),
    .rezultat(rezultat_and)
);

OR or_inst( //5
    .A(A),
    .B(B),
    .rezultat(rezultat_or)
);

XOR xor_inst( //6
    .A(A),
    .B(B),
    .rezultat(rezultat_xor)
);

ShiftStangaN shiftareStanga_inst( //7
    .A(A),
    .N(B),
    .rezultat(rezultat_shift_stanga)
);

ShiftDreaptaN shiftareDreapta_inst( //8
    .A(A),
    .N(B),
    .rezultat(rezultat_shift_dreapta)
);



always @(*) begin
    case(operatie)
        4'b0000: rezultat = rezultat_sumator;
        4'b0001: rezultat = rezultat_scazator;
        4'b0010: rezultat = rezultat_inmultitor;
        4'b0011: begin
            rezultat = rezultat_impartitor_cat;
            rest_rezultat = rezultat_impartitor_rest;
        end
        4'b0100: rezultat = rezultat_and;
        4'b0101: rezultat = rezultat_or;
        4'b0110: rezultat = rezultat_xor;
        4'b0111: rezultat = rezultat_shift_stanga;
        4'b1000: rezultat = rezultat_shift_dreapta;
        default: rezultat = 32'b0;
    endcase
    if(rezultat == 0) begin
        zero = 1;
    end
    else begin
        zero = 0;
    end
end

endmodule