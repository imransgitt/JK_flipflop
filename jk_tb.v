module jk_tb();
reg clk,reset,j,k;
wire q;

jk_ff j1(.clk(clk),.reset(reset),.j(j),.k(k),.q(q));

initial 
begin
$dumpfile("jk_test.vcd");
$dumpvars(0,jk_tb);
end

always #2 clk=~clk;

initial
begin
clk=1'b0;
reset=1'b1;
j=1'b1;
k=1'b0;

#10
reset=1'b0;
j=1'b1;
k=1'b0;
#10
j=1'b0;
k=1'b0;
#10
j=1'b0;
k=1'b1;
#10
j=1'b1;
k=1'b1;

#500 $finish;
end
endmodule
