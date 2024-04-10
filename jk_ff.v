module jk_ff( input clk,reset,j,k,
output reg q);

always@(posedge clk)
begin
if(reset) begin
	q<=1'b0;
	  end

else begin
	case({j,k})
	2'b00: q<=q;
	2'b01: q<=1'b0;
	2'b10: q<=1'b1;
	2'b11: q<=~q;
	default: q<=1'b0;
	endcase
     end
end
endmodule
