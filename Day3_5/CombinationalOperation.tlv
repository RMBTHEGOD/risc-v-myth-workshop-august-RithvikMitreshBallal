\m4_TLV_version 1d: tl-x.org
\SV

   // =========================================
   // Welcome!  Try the tutorials via the menu.
   // =========================================

   // Default Makerchip TL-Verilog Code Template
   
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m4_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $out = !$in1;
   $andOut = $out & $in2;
   $orOut = $in1 | $in2;
   $xorOut = $in1 ^ $in2; 
   $sumOut[4:0] = $in1[3:0] + $in2[3:0];
   $mux1bit = $sel ? $in2 : $in1;
   $mux8bit[7:0] = $sel ? $in1[7:0] : $in2[7:0];

   //...

   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
