
module basic(
    input clk,
    input rst,
    input [1:0]  din,
    output [1:0] dout
  );

  reg [1:0] dout_r;
  assign dout = dout_r;
  
  always@(posedge clk) begin
    if( rst == 1'b1)
      dout_r <= 2'b00;
    else begin 
      dout_r[0] <= din[0] & din[1];
      dout_r[1] <= (~din[0] ^ din[1]);
    end 
  end

endmodule

