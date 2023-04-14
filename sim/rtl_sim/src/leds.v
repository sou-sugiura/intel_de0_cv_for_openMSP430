/*===========================================================================*/
/*                                 DIGITAL I/O                               */
/*---------------------------------------------------------------------------*/
/* Test the Digital I/O interface.                                           */
/*===========================================================================*/
`define NO_TIMEOUT

initial
   begin
      $display(" ===============================================");
      $display("|                 START SIMULATION              |");
      $display(" ===============================================");
      repeat(5) @(posedge CLOCK_50); //sugi
      stimulus_done = 0;

      //repeat(100) @(posedge CLOCK_50); //sugi

      #(50000000.0); //sugi

      stimulus_done = 1;
      force omsp_inst_pc =16'hffff;

      stimulus_done = 1;
   end
