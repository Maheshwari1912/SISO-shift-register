module siso(
  input clk,input rst,
  input in,output out);
  reg [3:0] shift_reg;
  always@(posedge clk or posedge rst) begin
    if(rst) begin
      shift_reg <= 4'b0000;
    end
    else begin
      shift_reg <= {in,shift_reg[3:1]};
    end
  end
  assign out = shift_reg[0];
endmodule
