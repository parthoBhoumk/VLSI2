`include "environment.sv"

program test(input int count, alu_if aluif);
  environment env;

  initial begin
    env=new(aluif);
    env.main(count);
  end


endprogram:test
