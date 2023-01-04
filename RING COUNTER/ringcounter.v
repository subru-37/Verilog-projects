module four_bit_ring_counter (
     input clock,
     input reset,
     output [3:0] q   );
 reg[3:0] a;
   always @(posedge clock)
     if (reset)
       a = 4'b0001;
     else
       begin
       a <=  a>>1; // Notice the blocking assignment
       a[3]<=a[0];
       end
   assign q = a;
 endmodule