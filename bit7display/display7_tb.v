module tb_segment7;

    reg [3:0] bcd;
    wire [6:0] seg;
    integer i;

    // Instantiate the Unit Under Test (UUT)
    segment7 uut (
        .bcd(bcd), 
        .seg(seg)
    );

//Apply inputs
    initial begin
         $dumpfile ("displaytest.vcd");
         $dumpvars (0, tb_segment7);
         $monitor ($time, " bcd=%4b and seg=%7b", bcd,seg);
         begin
        bcd=4'b0000; #100;
        bcd=4'b0001; #100;
        bcd=4'b0010; #100;
        bcd=4'b0011; #100;
        bcd=4'b0100; #100;
        bcd=4'b0101; #100;
        bcd=4'b0110; #100;
        bcd=4'b0111; #100;
        bcd=4'b1000; #100;
        bcd=4'b1001; #100;
        bcd=4'b1010; #100;
        bcd=4'b1011; #100;
        bcd=4'b1100; #100;
        bcd=4'b1101; #100;
        bcd=4'b1110; #100;
        bcd=4'b1111; #100;
         end
        $finish;  
    end
      
endmodule