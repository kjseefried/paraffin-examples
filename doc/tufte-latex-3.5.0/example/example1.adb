pragma Profile (No_Implementation_Extensions);
with Parallel.Loops.Work_Seeking;

procedure Example is

   N : constant Positive := 100_000;

   type State_Type is null record;
   type State_Vector_Type is array (1 .. N) of State_Type;

   package Integer_Loops is new Parallel.Loops
     (Iteration_Index_Type => Integer);

   package Work_Seeking_Loops is
     new Integer_Loops.Work_Seeking;
   use Work_Seeking_Loops;

   WM : Work_Seeking_Manager;

   X0 : array (1 .. N) of State_Vector_Type;
   X1 : array (1 .. N) of State_Vector_Type;

   procedure Do_Partition (First, Last : Integer) is

      --  normally this is much more complex
      function F (I : Integer) return State_Vector_Type is
      begin
         return X0 (I);
      end F;

   begin
      for I in First .. Last loop
            X1 (I) := F (I);
      end loop;

   end Do_Partition;

begin
   WM.Execute_Parallel_Loop
     (From    => X0'First,
      To      => X0'Last,
      Process => Do_Partition'Access);

end Example;
