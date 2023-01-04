module testbench;
reg clk;
reg rst;
reg s,r;
wire q;
wire qbar;
srFF sr_dut( .clk(clk), .rst(rst), .s(s), .r(r), .q(q), .qbar(qbar) );
initial begin
 $dumpfile ("srFFTest.vcd");
 $dumpvars (0, testbench);
 $monitor(" clk=  ",clk," s= ",s," r= " ,r," q= ", q," qbar= ",qbar," rst= ",rst);
 $dumpfile ("srFFTest.vcd");
   $dumpvars (0, testbench);
s = 1'b0;
r = 1'b0;
rst = 1;
clk=1;
#10
rst=0;
s=1'b1;
r=1'b0;
#10
rst=0;
s=1'b0;
r=1'b1;
#10
rst=0;
s=1'b1;
r=1'b1;
#10
rst=0;
s=1'b0;
r=1'b0;
#10
rst=1;
s=1'b1;
r=1'b0;
 
#10 $finish;
end
always #8 clk = ~clk;
endmodule
