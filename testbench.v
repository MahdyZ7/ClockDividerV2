module testbench();
	reg clk;
	output wire q;
	output wire q0;
	output wire q1;
	output wire q2;
	output reg rst;
	output wire [6:0]clk_rx;


	Div2 d2 (.reset(rst), .clk(clk), .out(q));
	Div9 dut (.reset(rst),.clk(clk), .div9(q0));
	Div9alt dut2 (.reset(rst),.clk(clk), .div9(q1));
	Div80 dut3 (.reset(rst),.clk(clk), .div80(q2));
	Div80alt dut4 (.reset(rst),.clk(clk), .div80(q2));
	dividerblock db (.reset(rst), .clk(clk));
	counter counter (.rst(rst), .clk(clk), .counter(count));
	initial begin
		rst = 0;
	  clk = 1;
	  forever #1 clk = ~clk;
	end

	initial begin
		$dumpvars;
		$monitor("Time: %0d ns, clk: %b, q: %b q1: %b", $time, clk, q, q1);
		rst =0;
		#2 rst =1;
	  #100 $finish;
	end
endmodule