module fifo_boundary_tb();

    reg clk, rst_n, wr, rd;
    reg [7:0] data_in;
    wire [7:0] data_out;
    wire fifo_full, fifo_empty, fifo_threshold, fifo_overflow, fifo_underflow;

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

    always begin
      #5; 
      clk = ~clk; // Clock generation
    end

    initial begin
        clk = 0; 
        rst_n = 0; 
        wr = 0; 
        rd = 0; 
        data_in = 8'h00;

        #10; 
        rst_n = 1;
        
        $display("Boundary Condition Test Started");

        // Monitor important signals
        $monitor("Time: %0t | wr: %b | rd: %b | fifo_full: %b | fifo_empty: %b | fifo_overflow: %b | fifo_underflow: %b | data_in: %h | data_out: %h", 
                 $time, wr, rd, fifo_full, fifo_empty, fifo_overflow, fifo_underflow, data_in, data_out);

        // Fill FIFO to full
        repeat (16) begin
            #10; 
            data_in = data_in + 1; 
            wr = 1;
        end

        wr = 0;
        
        // Try writing to full FIFO (should cause overflow)
        #10; 
        wr = 1; 
        data_in = 8'hFF;
        
        #10; 
        wr = 0;
        
        // Read all data
        repeat (16) begin
            #10; 
            rd = 1;
        end

        rd = 0;
        
        // Try reading empty FIFO (should cause underflow)
        #10; 
        rd = 1;
        
        #10; 
        rd = 0;
        
        #50;
        $display("Boundary Condition Test Completed");
        $finish;
    end

endmodule