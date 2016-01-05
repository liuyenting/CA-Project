module ROM
#(
	parameter addr_width 	= 32,
	parameter data_width	= 32,
	parameter mem_size 		= 1024
)
(
	input							clk,
	input		[addr_width-1:0]	addr_i,
	input							cs,		
	input							we,		
	input 		[data_width-1:0] 	data_i,
	output		 [data_width-1:0]	data_o
);

	integer i;

	reg	[data_width-1:0]	memory	[0:mem_size-1];
	
	/*
	initial begin
		// Initialize the memory to zeros.
		for(i = 0; i < mem_size; i = i+1)
       		memory[i] = {data_width{1'b0}};
		
		// Set the default output to Hi-Z.
		data_o = {data_width{1'bz}};
	end

	initial begin
		
	end
	
	always @ (posedge clk)
		if(cs) begin
			if(we)
				// WE = Write Enable, select to write, output remain the same.
				memory[addr_i >> 2] <= data_i;
			else
				// CS = Chip Select, select to read, update the output.
				data_o = memory[addr_i >> 2];
		end else
			// Turn off the output pin.
			data_o = {data_width{1'bz}};
	*/

	assign data_o = memory[addr_i >> 2];

endmodule
