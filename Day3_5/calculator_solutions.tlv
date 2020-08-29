\m4_TLV_version 1d: tl-x.org
\SV
//Calculator labs solutions here

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
   \TLV
   //Counter and Calculator Problem
   |calc
      @0 
         $reset = *reset; 
      @1
         $val1[31:0] = >>2$out[31:0];
         $val2[31:0] = $rand2[3:0];
         $cnt = $reset ? 0 : (>>1$cnt+1);
         $valid = $cnt;
         $valid_or_reset = $reset | $valid;
         //Counter
      ?$valid_or_reset
         @1
            $add[31:0] = $val1[31:0] + $val2[31:0];
            $diff[31:0] = $val1[31:0] - $val2[31:0];
            $prod[31:0] = $val1[31:0] * $val2[31:0];
            $quot[31:0] = $val1[31:0] / $val2[31:0];
         @2 
            $out[31:0] = $reset ? 32'b0 : $op[2:0] >=3'h4 ? 
               $op[2:0]==3'h4 ? >>2$mem[31:0] :
               >>2$out :
               $op[1] ? $op[0] ? $quot : 
               $prod : 
               $op[0] ? $diff : $add;
            $mem[31:0] = $reset ? 32'b0 :($op[2:0] == 3'h5)? $val1[31:0] : >>2$mem[31:0];

   //...
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule

 
