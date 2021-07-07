\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
  `include "sqrt32.v"
\TLV
   // Pythagoras theorem
   |calc
      @1
         $aa[31:0] = $a[15:0] * $a[15:0];
         $bb[31:0] = $b[15:0] * $b[15:0];
      @2
         $cc[31:0] = $aa[15:0] + $bb[15:0];
      @3
         $c[15:0] = sqrt($cc);

   //...

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
