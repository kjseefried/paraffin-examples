pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b~example1.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b~example1.adb");

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is
   pragma Warnings (Off);

   E215 : Short_Integer; pragma Import (Ada, E215, "system__os_lib_E");
   E013 : Short_Integer; pragma Import (Ada, E013, "system__soft_links_E");
   E227 : Short_Integer; pragma Import (Ada, E227, "system__fat_llf_E");
   E023 : Short_Integer; pragma Import (Ada, E023, "system__exception_table_E");
   E202 : Short_Integer; pragma Import (Ada, E202, "ada__io_exceptions_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "ada__strings_E");
   E184 : Short_Integer; pragma Import (Ada, E184, "ada__strings__maps_E");
   E102 : Short_Integer; pragma Import (Ada, E102, "ada__tags_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "ada__streams_E");
   E050 : Short_Integer; pragma Import (Ada, E050, "interfaces__c_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "interfaces__c__strings_E");
   E029 : Short_Integer; pragma Import (Ada, E029, "system__exceptions_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "system__finalization_root_E");
   E126 : Short_Integer; pragma Import (Ada, E126, "ada__finalization_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "system__storage_pools_E");
   E131 : Short_Integer; pragma Import (Ada, E131, "system__finalization_masters_E");
   E195 : Short_Integer; pragma Import (Ada, E195, "system__storage_pools__subpools_E");
   E071 : Short_Integer; pragma Import (Ada, E071, "system__task_info_E");
   E168 : Short_Integer; pragma Import (Ada, E168, "ada__calendar_E");
   E172 : Short_Integer; pragma Import (Ada, E172, "ada__calendar__time_zones_E");
   E137 : Short_Integer; pragma Import (Ada, E137, "system__pool_global_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "system__file_control_block_E");
   E212 : Short_Integer; pragma Import (Ada, E212, "system__file_io_E");
   E017 : Short_Integer; pragma Import (Ada, E017, "system__secondary_stack_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "ada__strings__unbounded_E");
   E110 : Short_Integer; pragma Import (Ada, E110, "system__tasking__initialization_E");
   E118 : Short_Integer; pragma Import (Ada, E118, "system__tasking__protected_objects_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "system__tasking__task_attributes_E");
   E143 : Short_Integer; pragma Import (Ada, E143, "ada__real_time_E");
   E208 : Short_Integer; pragma Import (Ada, E208, "ada__text_io_E");
   E122 : Short_Integer; pragma Import (Ada, E122, "system__tasking__protected_objects__entries_E");
   E116 : Short_Integer; pragma Import (Ada, E116, "system__tasking__queuing_E");
   E164 : Short_Integer; pragma Import (Ada, E164, "system__tasking__stages_E");
   E206 : Short_Integer; pragma Import (Ada, E206, "log_E");
   E156 : Short_Integer; pragma Import (Ada, E156, "parallel__loops__work_seeking_E");
   E166 : Short_Integer; pragma Import (Ada, E166, "time_measurement_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      declare
         procedure F1;
         pragma Import (Ada, F1, "time_measurement__finalize_body");
      begin
         E166 := E166 - 1;
         F1;
      end;
      E122 := E122 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      E208 := E208 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "ada__text_io__finalize_spec");
      begin
         F3;
      end;
      E231 := E231 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "system__tasking__task_attributes__finalize_spec");
      begin
         F4;
      end;
      E180 := E180 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "ada__strings__unbounded__finalize_spec");
      begin
         F5;
      end;
      E131 := E131 - 1;
      E195 := E195 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__file_io__finalize_body");
      begin
         E212 := E212 - 1;
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__file_control_block__finalize_spec");
      begin
         E218 := E218 - 1;
         F7;
      end;
      E137 := E137 - 1;
      declare
         procedure F8;
         pragma Import (Ada, F8, "system__pool_global__finalize_spec");
      begin
         F8;
      end;
      declare
         procedure F9;
         pragma Import (Ada, F9, "system__storage_pools__subpools__finalize_spec");
      begin
         F9;
      end;
      declare
         procedure F10;
         pragma Import (Ada, F10, "system__finalization_masters__finalize_spec");
      begin
         F10;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");
   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");

      procedure Install_Handler;
      pragma Import (C, Install_Handler, "__gnat_install_handler");

      Handler_Installed : Integer;
      pragma Import (C, Handler_Installed, "__gnat_handler_installed");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, True, False, 
           False, False, False, False, False, False, True, False, 
           False, True, True, False, False, True, False, False, 
           False, False, False, False, False, False, False, True, 
           False, True, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, True, 
           True, False, False, False, True, False, False, False, 
           False, False, False, False, False, True, True, True, 
           True, True, False, True, False, True, False, True, 
           False, False, False, False, False, False, False, False, 
           True, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (True, False, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, True, 
           True, False, False, True, True, False, True, True, 
           True, True, True, True, False, False, True, False, 
           True, False, True, True, False, True, True, False, 
           False, True, True, False, False, False, True, False, 
           False, True, True, True, False, True, False, True, 
           True, True, True, True, True, False, False, True, 
           False, True, True, False, True, True, True, False, 
           True, False, False, False, True, False, False, True, 
           False, True, False),
         Count => (0, 0, 0, 2, 0, 0, 1, 0, 3, 0),
         Unknown => (False, False, False, False, False, False, True, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      if Handler_Installed = 0 then
         Install_Handler;
      end if;

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Fat_Llf'Elab_Spec;
      E227 := E227 + 1;
      System.Exception_Table'Elab_Body;
      E023 := E023 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E202 := E202 + 1;
      Ada.Strings'Elab_Spec;
      E178 := E178 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Tags'Elab_Spec;
      Ada.Streams'Elab_Spec;
      E127 := E127 + 1;
      Interfaces.C'Elab_Spec;
      Interfaces.C.Strings'Elab_Spec;
      System.Exceptions'Elab_Spec;
      E029 := E029 + 1;
      System.Finalization_Root'Elab_Spec;
      E129 := E129 + 1;
      Ada.Finalization'Elab_Spec;
      E126 := E126 + 1;
      System.Storage_Pools'Elab_Spec;
      E135 := E135 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Storage_Pools.Subpools'Elab_Spec;
      System.Task_Info'Elab_Spec;
      E071 := E071 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E168 := E168 + 1;
      Ada.Calendar.Time_Zones'Elab_Spec;
      E172 := E172 + 1;
      System.Pool_Global'Elab_Spec;
      E137 := E137 + 1;
      System.File_Control_Block'Elab_Spec;
      E218 := E218 + 1;
      System.File_Io'Elab_Body;
      E212 := E212 + 1;
      E195 := E195 + 1;
      System.Finalization_Masters'Elab_Body;
      E131 := E131 + 1;
      E052 := E052 + 1;
      E050 := E050 + 1;
      Ada.Tags'Elab_Body;
      E102 := E102 + 1;
      E184 := E184 + 1;
      System.Soft_Links'Elab_Body;
      E013 := E013 + 1;
      System.Os_Lib'Elab_Body;
      E215 := E215 + 1;
      System.Secondary_Stack'Elab_Body;
      E017 := E017 + 1;
      Ada.Strings.Unbounded'Elab_Spec;
      E180 := E180 + 1;
      System.Tasking.Initialization'Elab_Body;
      E110 := E110 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E118 := E118 + 1;
      System.Tasking.Task_Attributes'Elab_Spec;
      E231 := E231 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E143 := E143 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E208 := E208 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E122 := E122 + 1;
      System.Tasking.Queuing'Elab_Body;
      E116 := E116 + 1;
      System.Tasking.Stages'Elab_Body;
      E164 := E164 + 1;
      Log'Elab_Body;
      E206 := E206 + 1;
      E156 := E156 + 1;
      Time_Measurement'Elab_Body;
      E166 := E166 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_example1");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   C:\Users\MIchael\Projects\paraffin-examples\example1\build\parallel.o
   --   C:\Users\MIchael\Projects\paraffin-examples\example1\build\log.o
   --   C:\Users\MIchael\Projects\paraffin-examples\example1\build\parallel-loops.o
   --   C:\Users\MIchael\Projects\paraffin-examples\example1\build\parallel-loops-work_seeking.o
   --   C:\Users\MIchael\Projects\paraffin-examples\example1\build\time_measurement.o
   --   C:\Users\MIchael\Projects\paraffin-examples\example1\build\example1.o
   --   -LC:\Users\MIchael\Projects\paraffin-examples\example1\build\
   --   -LC:\Users\MIchael\Projects\paraffin-examples\example1\build\
   --   -LC:/GNAT/2013/lib/gcc/i686-pc-mingw32/4.7.4/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
