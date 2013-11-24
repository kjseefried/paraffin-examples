pragma Profile (No_Implementation_Extensions);
with Parallel.Loops.Work_Seeking;

with Time_Measurement;    use Time_Measurement;

procedure Example1 is
   T_Total     : constant Clock_Id_Type := Register ("T_Total");
   T_Partition : constant Clock_Id_Type := Register ("T_Partition");
   T_Overhead  : constant Clock_Id_Type := Register ("T_Overhead");

   N : constant Positive := 100_000_000;

   type Index_Type is new Positive range 1 .. N;
   type State_Type is null record;
   type State_Vector_Type is array (Index_Type) of State_Type;

   package Component_Loop is new Parallel.Loops
     (Iteration_Index_Type => Index_Type);

   package Work_Seeking_Loop is
     new Component_Loop.Work_Seeking;
   use Work_Seeking_Loop;

   WM : Work_Seeking_Manager;

   X0 : State_Vector_Type;
   X1 : State_Vector_Type;

   procedure Do_Partition (First, Last : Index_Type) is
      function F (I : Index_Type) return State_Type is
      begin
         --  normally this is much more complex
         return X0 (I);
      end F;

   begin
      Start_Lap (T_Partition);

      for I in First .. Last loop
         X1 (I) := F (I);
      end loop;

      Stop_Lap (T_Partition);
   end Do_Partition;

   ---------------
   -- Calibrate --
   ---------------
   procedure Calibrate is
   begin
      for I in 1 .. 3 loop
         Start_Lap (T_Overhead);
         Stop_Lap (T_Overhead);
      end loop;
   end Calibrate;

begin
   Calibrate;

   Start_Lap (T_Total);

   WM.Execute_Parallel_Loop
         (From    => X0'First,
          To      => X0'Last,
          Process => Do_Partition'Access);
   Stop_Lap (T_Total);

   List;
end Example1;
