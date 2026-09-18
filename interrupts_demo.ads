--  Ada 2022 topic: Ada.Interrupts (safe query APIs only).
pragma Ada_2022;
package Interrupts_Demo is
   --  SIGKILL is reserved by the runtime.
   function Kill_Is_Reserved return Boolean;
   --  SIGSEGV is reserved; Interrupt_ID range is non-empty.
   function Segv_Reserved_And_Ids_Ordered return Boolean;
end Interrupts_Demo;
