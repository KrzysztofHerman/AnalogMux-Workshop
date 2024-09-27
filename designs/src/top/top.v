module top (
    inout [2:0] chip_in_PAD,
    inout [7:0] chip_in_analog_PAD,
    inout chip_out_PAD,
    inout clk_PAD,
    inout rst_n_PAD
);

wire [2:0] chip_in;
wire [16:0] control_bus;
(* keep *)
wire [7:0] mux_in;
wire clk;
wire rst_n;
wire mux_out;

  sg13g2_IOPadIn sg13g2_chip_in_0 (
      .p2c(chip_in[0]),
      .pad({chip_in_PAD[0]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_1 (
      .p2c(chip_in[1]),
      .pad({chip_in_PAD[1]})
  );
  sg13g2_IOPadIn sg13g2_chip_in_2 (
      .p2c(chip_in[2]),
      .pad({chip_in_PAD[2]})
  );

  sg13g2_IOPadIn sg13g2_clk (
      .p2c(clk),
      .pad({clk_PAD})
  );
  sg13g2_IOPadIn sg13g2_rst_n (
      .p2c(rst_n),
      .pad(rst_n_PAD)
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_0 (
      .pad(chip_in_analog_PAD[0]),
      .padres(mux_in[0])
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_1 (
      .pad(chip_in_analog_PAD[1]),
      .padres(mux_in[1])
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_2 (
      .pad(chip_in_analog_PAD[2]),
      .padres(mux_in[2])
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_3 (
      .pad(chip_in_analog_PAD[3]),
      .padres(mux_in[3])
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_4 (
      .pad(chip_in_analog_PAD[4]),
      .padres(mux_in[4])
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_5 (
      .pad(chip_in_analog_PAD[5]),
      .padres(mux_in[5])
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_6 (
      .pad(chip_in_analog_PAD[6]),
      .padres(mux_in[6])
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_7 (
      .pad(chip_in_analog_PAD[7]),
      .padres(mux_in[7])
  );
 sg13g2_IOPadAnalog sg13g2_chip_analog_8 (
      .pad(chip_out_PAD),
      .padres(mux_out)
  );

(* keep *)
control control_macro (
    .clk(clk),
    .rst(rst_n),
    .sck(chip_in[0]),
    .mosi(chip_in[1]),
    .ss(chip_in[2]),
    .miso(control_bus[0]),
    .dout_p(control_bus[8:1]),
    .dout_n(control_bus[16:9])
);

endmodule