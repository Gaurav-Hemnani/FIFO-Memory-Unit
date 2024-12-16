module fifo_mem_tb;

	// Inputs
	reg clk;
	reg rst_n;
	reg wr;
	reg rd;
	reg [7:0] data_in;

	// Outputs
	wire [7:0] data_out;
	wire fifo_full;
	wire fifo_empty;
	wire fifo_threshold;
	wire fifo_overflow;
	wire fifo_underflow;

	// Instantiate the Unit Under Test (UUT)
	fifo_mem uut (
		.data_out(data_out), 
		.fifo_full(fifo_full), 
		.fifo_empty(fifo_empty), 
		.fifo_threshold(fifo_threshold), 
		.fifo_overflow(fifo_overflow), 
		.fifo_underflow(fifo_underflow), 
		.clk(clk), 
		.rst_n(rst_n), 
		.wr(wr), 
		.rd(rd), 
		.data_in(data_in)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rst_n = 0;
		wr = 0;
		rd = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100 clk = 0;
		rst_n = 0;
		wr = 0;
		rd = 0;
		data_in = 0;
		
		#100 clk = 0;
		rst_n = 0;
		wr = 0;
		rd = 0;
		data_in = 1;
		
		#100 clk = 0;
		rst_n = 0;
		wr = 0;
		rd = 1;
		data_in = 0;
		
		#100 clk = 0;
		rst_n = 0;
		wr = 0;
		rd = 1;
		data_in =1;
		
		#100 clk = 0;
		rst_n = 0;
		wr = 1;
		rd = 0;
		data_in = 0;
		
		#100 clk = 0;
		rst_n = 0;
		wr = 1;
		rd = 0;
		data_in = 1;
		
		#100 clk = 0;
		rst_n = 0;
		wr = 1;
		rd = 1;
		data_in = 0;
		
		#100 clk = 0;
		rst_n = 0;
		wr = 1;
		rd = 1;
		data_in = 1;
		
		#100 clk = 0;
		rst_n = 1;
		wr = 0;
		rd = 0;
		data_in = 0;
		
		#100 clk = 0;
		rst_n = 1;
		wr = 0;
		rd = 0;
		data_in = 1;
		
		#100 clk = 0;
		rst_n = 1;
		wr = 0;
		rd = 1;
		data_in = 0;
		
		#100 clk = 0;
		rst_n = 1;
		wr = 0;
		rd = 1;
		data_in = 1;
		
		#100 clk = 0;
		rst_n = 1;
		wr = 1;
		rd = 0;
		data_in = 0;
		
		#100 clk = 0;
		rst_n = 1;
		wr = 1;
		rd = 0;
		data_in = 1;
		
		#100 clk = 0;
		rst_n = 1;
		wr = 1;
		rd = 1;
		data_in = 0;
		
		#100 clk = 0;
		rst_n = 1;
		wr = 1;
		rd = 1;
		data_in = 1;
		
		#100 clk = 1;
		rst_n = 0;
		wr = 0;
		rd = 0;
		data_in = 0;
		
		#100 clk = 1;
		rst_n = 0;
		wr = 0;
		rd = 0;
		data_in = 1;
		
		#100 clk = 1;
		rst_n = 0;
		wr = 0;
		rd = 1;
		data_in = 0;
		
		#100 clk = 1;
		rst_n = 0;
		wr = 0;
		rd = 1;
		data_in = 1;
		
		#100 clk = 1;
		rst_n = 0;
		wr = 1;
		rd = 0;
		data_in = 0;
		
		#100 clk = 1;
		rst_n = 0;
		wr = 1;
		rd = 0;
		data_in = 1;
		
		#100 clk = 1;
		rst_n = 0;
		wr = 1;
		rd = 1;
		data_in = 0;
		
		#100 clk = 1;
		rst_n = 0;
		wr = 1;
		rd = 1;
		data_in = 1;
		
		#100 clk = 1;
		rst_n = 1;
		wr = 0;
		rd = 0;
		data_in = 0;
		
		#100 clk = 1;
		rst_n = 1;
		wr = 0;
		rd = 0;
		data_in = 1;
		
		#100 clk = 1;
		rst_n = 1;
		wr = 0;
		rd = 1;
		data_in = 0;
		
		#100 clk = 1;
		rst_n = 1;
		wr = 0;
		rd = 1;
		data_in = 1;
		
		#100 clk = 1;
		rst_n = 1;
		wr = 1;
		rd = 0;
		data_in = 0;
		
		#100 clk = 1;
		rst_n = 1;
		wr = 1;
		rd = 0;
		data_in = 1;
		
		#100 clk = 1;
		rst_n = 1;
		wr = 1;
		rd = 1;
		data_in = 0;
		
		#100 clk = 1;
		rst_n = 1;
		wr = 1;
		rd = 1;
		data_in = 1;

	end
      
endmodule