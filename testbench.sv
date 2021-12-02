`include "testcase01.sv"
//`include "test.sv"
`include "interface.sv"

module testbench;
  bit clk;

  initial begin
    forever #5 clk =~clk;
  end

  int count=5;
  alu_if aluif(clk);

  test test01(count,aluif);

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

  alu DUT (
    .a(aluif.a),
    .b(aluif.b),
    .s(aluif.s),
    .out(aluif.out),
    .clk(clk)
  );


endmodule
