module fifo_basic_tb;
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

    always #5 clk = ~clk; // 10ns Clock Period

    initial begin
        clk = 0; rst_n = 0; wr = 0; rd = 0; data_in = 8'h00;
        #10 rst_n = 1;

        $display("Basic Functional Test");
        
        // Write 5 data words
        repeat (5) begin
            wr = 1;
            #10 data_in = data_in + 1; 
        end

        // Ensure FIFO is not empty
        wr = 0;
        #10;

        // Read 5 data words
        repeat (5) begin
            #10 rd = 1;
            $monitor("Time: %0t      data_out: %h", $time, data_out);
        end

        //$monitor("Time: %0t     data_out: %h", $time, data_out);

        rd = 0;
        #50;
        $finish;

    end
    
endmodule
