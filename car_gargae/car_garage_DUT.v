module DUT();
reg clk;
reg car_enter,car_out,reset;
wire [5:0] car_count;
wire [6:0] leds1,leds2;
wire [1:0] cur_st,nex_s;
wire garage_full;

	car_garage CG(clk,reset,car_enter,car_out,car_count,garage_full,leds1,leds2,cur_st,nex_s);
	counter_to_decoder CTD(clk,reset,car_count,leds1,leds2);
	up_counter UC (clk,reset,car_enter,car_out,car_count);

initial  begin
clk=0; 
forever #50 clk = ~clk;  // 0 1 0 1 0 1
end

initial begin
	
	reset = 1; car_enter=0; car_out=0; #100;
	
	reset=0; #100;
	
		car_enter=1; #100; 
		car_enter=1; #100; 
		car_enter=1; #100; 
		car_enter=1; #100; 
		car_enter=1; #100;
		car_enter=1; #100; 

		// car_enter=0;car_out=0; #100;
	
	/*
		car_out=1; #100;
		car_out=1; #100;;
		car_out=1; #100;
		car_out=1; #100;
		car_out=1; #100;
		car_out=1; #100;
		car_out=1; #100;
		car_out=1; #100;
		car_out=1; #100;
		car_out=1; #100;
*/


end
	always begin 
		car_enter=1; #100;
		car_enter=1; #100; 
		car_enter=1; #100; 
		car_enter=1; #100; 
		car_enter=1; #100; 
		end
/*
always begin 
		car_out=1; #100;
		car_out=1; #100; 
		car_out=1; #100; 
		car_out=1; #100; 
		car_out=1; #100; 
		end  */
endmodule
