/////Write a verilog design code for a 1 bit full adder using 2 half_adder and 1 OR gate and verify using a testbench
module half_adder(input a,b,output sum,carry);
 //Data-flow abstraction
 assign sum = a ^ b;
 assign carry = a & b;
endmodule
module full_adder(a_in,b_in,c_in,sum_out,carry_out);
 //directions for the ports
 input a_in,b_in,c_in;
 output sum_out,carry_out;
 //internal wires
  wire w1,w2,w3;
 //name-based port mapping
 half_adder HA1(.a(a_in),.b(b_in),.sum(w1),.carry(w2));
 half_adder HA2(.a(w1),.b(c_in),.sum(sum_out),.carry(w3));
 //Instantiate the OR gate
 or or1(carry_out,w3,w2);
endmodule