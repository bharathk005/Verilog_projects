`timescale 1ns / 1ps
module t_processor;

	// Inputs
	reg c;
	reg [0:15] din;
	reg regE;
	reg ext;
	
	wire [0:15] dout1;
	wire [0:15] dout;

	// Instantiate the Unit Under Test (UUT)
	processor uut (
		.c(c), 
		.din(din),  
		.regE(regE),
		.ext(ext),
		.dout(dout),
		.dout1(dout1)
	);

	initial begin
		// Initialize Inputs
		c = 1;
		ext = 0;
		din = 0;
		regE = 0;
		din = 0;
		// Wait 100 ns for global reset to finish
		#101;
     
		  regE=1;
		  #5;
		  din = 16'b0000_0000_0000_0000;
		  #10;
	  	  regE = 0;
		  #5;

		 while(din != 16'b0000_0000_0011_1110)
		  begin
		  regE=1;
		  din = din +1;
		  #10;
		  regE = 0;
		  #5;
		  end
			regE = 1;
		  #5;
		  din = 16'b0000_0000_0011_1111;
	
		  regE = 0;
		  ext = 1;
		/*  
		  regE = 1;
		  #5;
		  din = 16'b1000_0000_0000_0001;
		  #10;
		  regE = 0;
		  #5;
		  
		  regE = 1;
		  #5;
		  din = 16'b1000_0000_0000_0010;
		  #10;
		  regE = 0;
		  #5;
		  
		  regE = 1;
		  #5;
		  din = 16'b1000_0000_0000_0011;
		  #10;
		  regE = 0;
		  #5;
		  
		  
			regE = 1;
		  #5;
		  din = 16'b1000_0000_0000_0100;
		  #10;
		  regE = 0;
		  #5;
		  
		  regE = 1;
		  #5;
		  din = 16'b1000_0000_0000_0101;
		  #10;
		  regE = 0;
		  #5;
		  
		  regE = 1;
		  #5;
		  din = 16'b1000_0000_0000_0110;
		  #10;
		  regE = 0;
		  #5;
		  
		  regE = 1;
		  #5;
		  din = 16'b1000_0000_0000_0111;
		  #10;
		  regE = 0;
		  #5;
		*/  

	//		#5;
		
		
		
		
	//	#15;
	 // Add stimulus here
	
	
	
	end
    

always #5 c= ~c;	 
endmodule

