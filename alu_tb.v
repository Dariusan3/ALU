`timescale 1ns/1ps

module alu_tb;

reg [31:0] A;
reg [31:0] B;
reg [31:0] C;
reg [3:0] operatie;
wire [31:0] rezultat;
wire [31:0] rest_rezultat;
wire zero;

alu alu_inst(
    .A(A),
    .B(B),
    .operatie(operatie),
    .rezultat(rezultat),
    .rest_rezultat(rest_rezultat),
    .zero(zero)
);

integer i, j;

initial begin
    $display("----------------------------------------------------------------");
    $display("Test  | OperandA | OperandB | Operatie | Rezultat | Zero !");
    $display("----------------------------------------------------------------");
    for(i = 0; i < 5; i=i+1) begin
        A = $urandom_range(1, 100);
        B = $urandom_range(1, 100);
        C = B;
        if(A < B) begin
            j = A;
            A = B;
            B = j;
        end

        $display("| %4d | %8d | %8d", i, A, B);

        for(j = 0; j < 9; j=j+1) begin
            operatie = j;
            if(operatie == 7) begin
                B = $urandom_range(1, 3);
                $display("sfiftare cu %d pozitii stanga", B);
            end
            else if(operatie == 8) begin
                B = $urandom_range(1, 3);
                $display("sfiftare cu %d pozitii dreapta", B);
            end
            else if(operatie == 3) begin
                $display("restul la impartire este: %d", rest_rezultat);   
            end
            
            #20;

            $display("|          |          |          |     %3d     |   %8d  |   %3d  |",
            operatie, rezultat, zero);
        end

        $display("----------------------------------------------------------------");
    end
end

endmodule