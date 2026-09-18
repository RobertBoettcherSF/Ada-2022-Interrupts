pragma Ada_2022;
with Ada.Interrupts;
with Ada.Interrupts.Names;
package body Interrupts_Demo is
   package I renames Ada.Interrupts;
   package N renames Ada.Interrupts.Names;
   use type I.Interrupt_ID;
   function Kill_Is_Reserved return Boolean is
   begin
      return I.Is_Reserved (N.SIGKILL);
   end Kill_Is_Reserved;
   function Segv_Reserved_And_Ids_Ordered return Boolean is
   begin
      return I.Is_Reserved (N.SIGSEGV)
        and then I.Interrupt_ID'First <= I.Interrupt_ID'Last;
   end Segv_Reserved_And_Ids_Ordered;
end Interrupts_Demo;
