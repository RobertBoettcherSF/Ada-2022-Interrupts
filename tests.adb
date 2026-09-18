pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Interrupts_Demo;
procedure Tests is
begin
   Assert (Interrupts_Demo.Kill_Is_Reserved);
   Assert (Interrupts_Demo.Segv_Reserved_And_Ids_Ordered);
   Put_Line ("PASS Interrupts Is_Reserved / Interrupt_ID queries");
   Put_Line ("All Interrupts topic tests passed.");
end Tests;
