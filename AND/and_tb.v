module and_tb();
    reg a,b;
    wire c;
    simpleand DUT(c,a,b); //.x(a),.y(b),.f(c)
    initial 
    begin 
        $dumpfile("and_tb.vcd");
        $dumpvars(0,and_tb);
        $monitor($time, "A: %b, B: %b, Y:%b",a,b,c);
        #5
        a = 0; b = 0; #5
        a = 0; b = 1; #5
        a = 1; b = 0; #5
        a = 1; b = 1; #5
        $finish;
    end
endmodule