//Testbench
module full_adder_tb();
 //Testbench global variables
 reg a,b,cin;
 wire sum,carry;
 //Variable for loop iteration
 integer i;
 //order based port mapping
 full_adder DUT(a,b,cin,sum,carry);
 //Process to initialize the variables at 0ns
 initial
 begin
 a = 1'b0;
 b = 1'b0;
 cin = 1'b0;
 end
 //Process to generate stimulus using for loop
 initial
  begin
  for(i=0;i<8;i=i+1)
    begin
       {a,b,cin}=i;
       #10;
    end
end
 //Process to monitor the changes in the variables
 initial
    $monitor("Input a=%b, b=%b, c=%b, Output sum =%b,carry=%b",a,b,cin,sum,carry);
 //Process to terminate simulation after 100ns
 initial 
   #100 $finish;

endmodule