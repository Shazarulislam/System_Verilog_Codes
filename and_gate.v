// Code your design here
module and_gate(a,b,out);
  input logic a,b;
  output logic out;
  assign out = a &b;
endmodule

///..........................//
// Code your testbench here
// or browse Examples
module and_gate_tb();
  logic a,b,out;
  and_gate dut(a,b,out);
  int i=0;
  initial begin
    for(i=0;i<4; i++)begin
      #10 {a,b}=i;
    end
  end
  initial begin
    $monitor("%b | %b | %b",a,b,out);
  end
endmodule