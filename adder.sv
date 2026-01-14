

//adder module
module adder(
input logic [3:0] A,
input logic [3:0] B,
output logic [4:0] SUM
);

assign SUM = A + B;


endmodule