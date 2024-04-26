module up_counter(clk,reset,increment,decrement,count);
  
  input clk ,reset,increment,decrement;
  
  output  reg[5:0] count; // 0- 50 6bit 
  
  initial 
  count <=6'b0;
  
  always @(posedge clk or posedge reset)
  begin
    if(reset)
    count <= 6'b0;
  else if(increment && count <50) 
    count <= count+1;
  else if(decrement && count)// 1 0
    count <= count -1;
  else if(count == 50)
  $display("GARAGE IS FULL");
 else if(count == 0 && decrement)
$display("GARAGE IS empty");
  end
endmodule

module up_counter_DUT();
  
  wire clk;
  wire [5:0] count ;
  reg reset , increment , decrement;
 // wire CLK100Hz;
 // clock_divider dvd(clk,reset,CLK100Hz);
  initial begin
    
    reset =1;#100;
    reset =0; increment =1;  #100;
    increment =1; #100;
    increment =1; #100;
    increment =1; #100;
    increment =0;decrement = 1 ;#100;
   increment =0; decrement = 1 ;#100;
    increment = 1;
  end
  up_counter cc(clk,reset,increment,decrement,count);
endmodule