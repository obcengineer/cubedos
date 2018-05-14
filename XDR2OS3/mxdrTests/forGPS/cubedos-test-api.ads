--------------------------------------------------------------------------------
-- FILE   : cubedos-test-api.ads
-- SUBJECT: Specification of a package that defines the test API
-- AUTHOR : (C) Copyright 2017 by Vermont Technical College
-- All the subprograms in this package must be task safe. They can be simultaneously
--called from multiple tasks. If possible, make every subprogram here a pure function.
--------------------------------------------------------------------------------
pragma SPARK_Mode(On);

with Ada.Real_Time;

with CubedOS.Lib;
with Message_Manager;  use Message_Manager;
with System;

package CubedOS.test.API is

   type Message_Type is
      (v76, 
      v80, 
      v79, 
      v75);

   type v1 is new Lib.Quadruple_Octet;

   type v2 is new Lib.Quadruple_Octet range 0 .. 100;

   subtype v3 is v2 range 0 .. 100.0;

   type av1 is array (0 .. 1000) of v3;

   type v4 is new Integer;

   type v5 is new Integer range 0 .. 100;

   subtype v6 is v2 range 0 .. 100.0;

   type v7 is new Lib.U_Hyper_Type;

   type v8 is new Lib.U_Hyper_Type range 0 .. 100;

   subtype v9 is v8 range 0 .. 1;

   type v10 is new Lib.Hyper_Type;

   type v11 is new Lib.Hyper_Type range 0 .. 100;

   subtype v12 is natural range 0 .. 1;

   type v13 is new Float;

   type v99 is new Float range 1.0 .. 100.0;

   subtype v98 is v99 range 1.0 .. 2.0;

   type v14 is new Double;

   type v15 is new Boolean;

   type v16 is new String;

   type v18 is new tai_kwon_do;

   type v19 is new tai_kwon_do range 0 .. 100;

   subtype v20 is v19 range 0 .. 1;

   type v21 is new Ada.Real_Time.Time_Span;

   type v22 is new Ada.Real_Time.Time;

   type v23 is new CubedOS.Lib.Octet_Array;

   type v24 is
      (red, 
      blue, 
      green);

   type v25 is
      (red, 
      blue, 
      green);

   type v26 is 
         (red, 
         blue, 
         green);

   type v27 is 
         (red, 
         blue, 
         green);

   type v28 is
      record
         sav1 : av1;
         sv1 : Integer;
      end record;

   type v29 is 
      record
         sv1 : Integer;
      end record;

   type v30 is
      record
         sv1 : Lib.Quadruple_Octet;
         sv2 : Integer;
         sv3 : Lib.U_Hyper_Type;
         sv4 : Lib.Hyper_Type;
         sv5 : Float;
         sv6 : Double;
         sv7 : Boolean;
         sv8 : String;
         sv9 : tai_kwon_dee;
         sv10 : Ada.Real_Time.Time_Span;
         sv11 : Ada.Real_Time.Time;
         sv12 : CubedOS.Lib.Octet_Array;
         sv13 : v24;
         sv14 : v25;
         sv15 : v26;
         sv16 : v27;
         sv17 : v28;
         sv18 : v29;
         sv19 : v98;
         sv20 : v99;
      end record;

   type v31 is
      record
         sv1 : v30;
         sv2 : v30;
      end record;

   type v32 is 
      record
         sv1 : Lib.Quadruple_Octet;
         sv2 : Integer;
         sv3 : Lib.U_Hyper_Type;
         sv4 : Lib.Hyper_Type;
         sv5 : Float;
         sv6 : Double;
         sv7 : Boolean;
         sv8 : String;
         sv9 : tai_kwon_dee;
         sv10 : Ada.Real_Time.Time_Span;
         sv11 : Ada.Real_Time.Time;
         sv12 : CubedOS.Lib.Octet_Array;
         sv13 : v24;
         sv14 : v25;
         sv15 : v26;
         sv16 : v27;
         sv17 : v28;
         sv18 : v29;
         sv19 : v98;
         sv20 : v99;
      end record;

   type v33 is 
      record
         sv1 : v32;
         sv2 : v32;
      end record;

   type v34 is new Lib.Quadruple_Octet := 1;

   type v35 is new Integer := 1;

   type v36 is new Lib.U_Hyper_Type := 1;

   type v37 is new Lib.Hyper_Type := 1;

   type v38 is new Float := 3;

   type v39 is new Double := 3;

   type v41 is new CubedOS.Lib.Octet_Array;

   type v42 is new String;

   type v43 is new String;

   type v44 is new tai_kwon_doo_wop;

   v45: constant := 1;

   v46: constant v36 := 1;

   type v47 is new Lib.Quadruple_Octet;

   type v48 is new Integer;

   type v49 is new Lib.U_Hyper_Type;

   type v50 is new Lib.Hyper_Type;

   type v51 is new Float;

   type v52 is new Double;

   type v53 is new Boolean;

   type v54 is new String;

   type v56 is new tai_kwon_do;

   type v57 is new Ada.Real_Time.Time_Span;

   type v58 is new Ada.Real_Time.Time;

   type v59 is new CubedOS.Lib.Octet_Array;

   type v60 is
      (red, 
      blue, 
      green);

   type v61 is
      (red, 
      blue, 
      green);

   type v62 is
      record
         sv1 : Integer;
      end record;

   type v63 is
      record
         sv1 : Lib.Quadruple_Octet;
         sv2 : Integer;
         sv3 : Lib.U_Hyper_Type;
         sv4 : Lib.Hyper_Type;
         sv5 : Float;
         sv6 : Double;
         sv7 : Boolean;
         sv8 : String;
         sv9 : tai_kwon_dee;
         sv10 : Ada.Real_Time.Time_Span;
         sv11 : Ada.Real_Time.Time;
         sv12 : CubedOS.Lib.Octet_Array;
         sv13 : v60;
         sv14 : v61;
         sv15 : v62;
      end record;

   type v64 is
      record
         sv1 : v63;
         sv2 : v63;
      end record;

   type v65 is new Lib.Quadruple_Octet := 1;

   type v66 is new Integer := 1;

   type v67 is new Lib.U_Hyper_Type := 1;

   type v68 is new Lib.Hyper_Type := 1;

   type v69 is new Float := 3;

   type v70 is new Double := 3;

   type v71 is new CubedOS.Lib.Octet_Array;

   type v72 is new String;

   type v73 is new String;

   type v74 is new tai_kwon_doo_wop;

   function v75_Encode
      (Sender_Domain : Domain_ID_Type;
      Sender  : Module_ID_Type;
      --TODO
      Priority : System.Priority := System.Default_Priority) return Message_Record
   with
      Global => null;

   function Is_v75(Message : Message_Record) return Boolean is
      (Message.Sender = ID and Message.Message_ID = Message_Type'Pos(v75));


   function v76_Encode
      (Receiver_Domain : Domain_ID_Type;
      Receiver  : Module_ID_Type;
      --TODO
      Priority : System.Priority := System.Default_Priority) return Message_Record
   with
      Global => null;

   function Is_v76(Message : Message_Record) return Boolean is
      (Message.Receiver = ID and Message.Message_ID = Message_Type'Pos(v76));


   function v79_Encode
      (Sender_Domain : Domain_ID_Type;
      Sender  : Module_ID_Type;
      sv1 : v1;
      sv2 : v2;
      sv3 : v3;
      sv4 : v4;
      sv5 : v5;
      sv6 : v6;
      sv7 : v7;
      sv8 : v8;
      sv9 : v9;
      sv10 : v10;
      sv11 : v11;
      sv12 : v12;
      sv13 : v13;
      sv14 : v14;
      sv15 : v15;
      sv16 : v16;
      sv18 : v18;
      sv19 : v19;
      sv20 : v20;
      sv21 : v21;
      sv22 : v22;
      sv23 : v23;
      sv24 : v24;
      sv25 : v25;
      sv26 : v26;
      sv27 : v27;
      sv28 : v28;
      sv29 : v29;
      sv30 : v30;
      sv31 : v31;
      sv32 : v32;
      sv33 : v33;
      sv34 : v34;
      sv35 : v35;
      sv36 : v36;
      sv37 : v37;
      sv38 : v38;
      sv39 : v39;
      sv41 : v41;
      sv42 : v42;
      sv43 : v43;
      sv44 : v44;
      sv47 : v47;
      sv48 : v48;
      sv49 : v49;
      sv50 : v50;
      sv51 : v51;
      sv52 : v52;
      sv53 : v53;
      sv54 : v54;
      sv56 : v56;
      sv57 : v57;
      sv58 : v58;
      sv59 : v59;
      sv60 : v60;
      sv61 : v61;
      sv62 : v62;
      sv63 : v63;
      sv64 : v64;
      sv65 : v65;
      sv66 : v66;
      sv67 : v67;
      sv68 : v68;
      sv69 : v69;
      sv70 : v70;
      sv72 : v72;
      sv73 : v73;
      sv74 : v74;
      sv75 : Lib.Quadruple_Octet;
      sv76 : Integer;
      sv77 : Lib.U_Hyper_Type;
      sv78 : Lib.Hyper_Type;
      sv79 : Float;
      sv80 : Double;
      sv81 : Boolean;
      sv82 : String;
      sv83 : tai_kwon_do;
      sv84 : Ada.Real_Time.Time_Span;
      sv85 : Ada.Real_Time.Time;
      sv86 : CubedOS.Lib.Octet_Array;
      sv88 : CubedOS.Lib.Octet_Array;
      sv90 : String;
      sv91 : tai_kwon_doo_wop;
      sv92 : v98;
      sv93 : v99;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   with
      Global => null,
      Pre => (0 < sv90'Length and sv90'Length <= XDR_Size_Type'Last - 12);

   function Is_v79(Message : Message_Record) return Boolean is
      (Message.Sender = ID and Message.Message_ID = Message_Type'Pos(v79));

   procedure v79_Decode
      (Message : in  Message_Record;
      sv1 : out v1;
      sv2 : out v2;
      sv3 : out v3;
      sv4 : out v4;
      sv5 : out v5;
      sv6 : out v6;
      sv7 : out v7;
      sv8 : out v8;
      sv9 : out v9;
      sv10 : out v10;
      sv11 : out v11;
      sv12 : out v12;
      sv13 : out v13;
      sv14 : out v14;
      sv15 : out v15;
      sv16 : out v16;
      sv18 : out v18;
      sv19 : out v19;
      sv20 : out v20;
      sv21 : out v21;
      sv22 : out v22;
      sv23 : out v23;
      sv24 : out v24;
      sv25 : out v25;
      sv26 : out v26;
      sv27 : out v27;
      sv28 : out v28;
      sv29 : out v29;
      sv30 : out v30;
      sv31 : out v31;
      sv32 : out v32;
      sv33 : out v33;
      sv34 : out v34;
      sv35 : out v35;
      sv36 : out v36;
      sv37 : out v37;
      sv38 : out v38;
      sv39 : out v39;
      sv41 : out v41;
      sv42 : out v42;
      sv43 : out v43;
      sv44 : out v44;
      sv47 : out v47;
      sv48 : out v48;
      sv49 : out v49;
      sv50 : out v50;
      sv51 : out v51;
      sv52 : out v52;
      sv53 : out v53;
      sv54 : out v54;
      sv56 : out v56;
      sv57 : out v57;
      sv58 : out v58;
      sv59 : out v59;
      sv60 : out v60;
      sv61 : out v61;
      sv62 : out v62;
      sv63 : out v63;
      sv64 : out v64;
      sv65 : out v65;
      sv66 : out v66;
      sv67 : out v67;
      sv68 : out v68;
      sv69 : out v69;
      sv70 : out v70;
      sv72 : out v72;
      sv73 : out v73;
      sv74 : out v74;
      sv75 : out Lib.Quadruple_Octet;
      sv76 : out Integer;
      sv77 : out Lib.U_Hyper_Type;
      sv78 : out Lib.Hyper_Type;
      sv79 : out Float;
      sv80 : out Double;
      sv81 : out Boolean;
      sv82 : out String;
      sv82_Size : out Natural;
      sv83 : out tai_kwon_do;
      sv84 : out Ada.Real_Time.Time_Span;
      sv85 : out Ada.Real_Time.Time;
      sv86 : out CubedOS.Lib.Octet_Array;
      Size : out CubedOS.Lib.Octet_Array_Count;
      sv88 : out CubedOS.Lib.Octet_Array;
      Size : out CubedOS.Lib.Octet_Array_Count;
      sv90 : out String;
      sv90_Size : out Natural;
      sv91 : out tai_kwon_doo_wop;
      sv92 : out v98;
      sv93 : out v99;
      Decode_Status : out Message_Status_Type)
   with
      Global => null,
      Pre => Is_v79(Message),
      Depends => ((sv1, sv2, sv3, sv4, sv5, sv6, sv7, sv8, sv9, sv10, sv11, sv12, sv13, sv14, sv15, sv16, sv18, sv19, sv20, sv21, sv22, sv23, sv24, sv25, sv26, sv27, sv28, sv29, sv30, sv31, sv32, sv33, sv34, sv35, sv36, sv37, sv38, sv39, sv41, sv42, sv43, sv44, sv47, sv48, sv49, sv50, sv51, sv52, sv53, sv54, sv56, sv57, sv58, sv59, sv60, sv61, sv62, sv63, sv64, sv65, sv66, sv67, sv68, sv69, sv70, sv72, sv73, sv74, sv75, sv76, sv77, sv78, sv79, sv80, sv81, sv82, sv82_Size, sv83, sv84, sv85, sv86, Size, sv88, Size, sv90, sv90_Size, sv91, sv92, sv93, Decode_Status) => Message);


   function v80_Encode
      (Receiver_Domain : Domain_ID_Type;
      Receiver  : Module_ID_Type;
      msav1 : av1;
      sv1 : v1;
      sv2 : v2;
      sv3 : v3;
      sv4 : v4;
      sv5 : v5;
      sv6 : v6;
      sv7 : v7;
      sv8 : v8;
      sv9 : v9;
      sv10 : v10;
      sv11 : v11;
      sv12 : v12;
      sv13 : v13;
      sv14 : v14;
      sv15 : v15;
      sv16 : v16;
      sv18 : v18;
      sv19 : v19;
      sv20 : v20;
      sv21 : v21;
      sv22 : v22;
      sv23 : v23;
      sv24 : v24;
      sv25 : v25;
      sv26 : v26;
      sv27 : v27;
      sv28 : v28;
      sv29 : v29;
      sv30 : v30;
      sv31 : v31;
      sv32 : v32;
      sv33 : v33;
      sv34 : v34;
      sv35 : v35;
      sv36 : v36;
      sv37 : v37;
      sv38 : v38;
      sv39 : v39;
      sv41 : v41;
      sv42 : v42;
      sv43 : v43;
      sv44 : v44;
      sv47 : v47;
      sv48 : v48;
      sv49 : v49;
      sv50 : v50;
      sv51 : v51;
      sv52 : v52;
      sv53 : v53;
      sv54 : v54;
      sv56 : v56;
      sv57 : v57;
      sv58 : v58;
      sv59 : v59;
      sv60 : v60;
      sv61 : v61;
      sv62 : v62;
      sv63 : v63;
      sv64 : v64;
      sv65 : v65;
      sv66 : v66;
      sv67 : v67;
      sv68 : v68;
      sv69 : v69;
      sv70 : v70;
      sv72 : v72;
      sv73 : v73;
      sv74 : v74;
      sv75 : Lib.Quadruple_Octet;
      sv76 : Integer;
      sv77 : Lib.U_Hyper_Type;
      sv78 : Lib.Hyper_Type;
      sv79 : Float;
      sv80 : Double;
      sv81 : Boolean;
      sv82 : String;
      sv83 : tai_kwon_do;
      sv84 : Ada.Real_Time.Time_Span;
      sv85 : Ada.Real_Time.Time;
      sv86 : CubedOS.Lib.Octet_Array;
      sv88 : CubedOS.Lib.Octet_Array;
      sv89 : String;
      sv91 : tai_kwon_doo_wop;
      sv92 : v98;
      sv93 : v99;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   with
      Global => null,
      Pre => (0 < sv89'Length and sv89'Length <= XDR_Size_Type'Last - 12);

   function Is_v80(Message : Message_Record) return Boolean is
      (Message.Receiver = ID and Message.Message_ID = Message_Type'Pos(v80));

   procedure v80_Decode
      (Message : in  Message_Record;
      msav1 : out av1;
      sv1 : out v1;
      sv2 : out v2;
      sv3 : out v3;
      sv4 : out v4;
      sv5 : out v5;
      sv6 : out v6;
      sv7 : out v7;
      sv8 : out v8;
      sv9 : out v9;
      sv10 : out v10;
      sv11 : out v11;
      sv12 : out v12;
      sv13 : out v13;
      sv14 : out v14;
      sv15 : out v15;
      sv16 : out v16;
      sv18 : out v18;
      sv19 : out v19;
      sv20 : out v20;
      sv21 : out v21;
      sv22 : out v22;
      sv23 : out v23;
      sv24 : out v24;
      sv25 : out v25;
      sv26 : out v26;
      sv27 : out v27;
      sv28 : out v28;
      sv29 : out v29;
      sv30 : out v30;
      sv31 : out v31;
      sv32 : out v32;
      sv33 : out v33;
      sv34 : out v34;
      sv35 : out v35;
      sv36 : out v36;
      sv37 : out v37;
      sv38 : out v38;
      sv39 : out v39;
      sv41 : out v41;
      sv42 : out v42;
      sv43 : out v43;
      sv44 : out v44;
      sv47 : out v47;
      sv48 : out v48;
      sv49 : out v49;
      sv50 : out v50;
      sv51 : out v51;
      sv52 : out v52;
      sv53 : out v53;
      sv54 : out v54;
      sv56 : out v56;
      sv57 : out v57;
      sv58 : out v58;
      sv59 : out v59;
      sv60 : out v60;
      sv61 : out v61;
      sv62 : out v62;
      sv63 : out v63;
      sv64 : out v64;
      sv65 : out v65;
      sv66 : out v66;
      sv67 : out v67;
      sv68 : out v68;
      sv69 : out v69;
      sv70 : out v70;
      sv72 : out v72;
      sv73 : out v73;
      sv74 : out v74;
      sv75 : out Lib.Quadruple_Octet;
      sv76 : out Integer;
      sv77 : out Lib.U_Hyper_Type;
      sv78 : out Lib.Hyper_Type;
      sv79 : out Float;
      sv80 : out Double;
      sv81 : out Boolean;
      sv82 : out String;
      sv82_Size : out Natural;
      sv83 : out tai_kwon_do;
      sv84 : out Ada.Real_Time.Time_Span;
      sv85 : out Ada.Real_Time.Time;
      sv86 : out CubedOS.Lib.Octet_Array;
      Size : out CubedOS.Lib.Octet_Array_Count;
      sv88 : out CubedOS.Lib.Octet_Array;
      Size : out CubedOS.Lib.Octet_Array_Count;
      sv89 : out String;
      sv89_Size : out Natural;
      sv91 : out tai_kwon_doo_wop;
      sv92 : out v98;
      sv93 : out v99;
      Decode_Status : out Message_Status_Type)
   with
      Global => null,
      Pre => Is_v80(Message),
      Depends => ((msav1, sv1, sv2, sv3, sv4, sv5, sv6, sv7, sv8, sv9, sv10, sv11, sv12, sv13, sv14, sv15, sv16, sv18, sv19, sv20, sv21, sv22, sv23, sv24, sv25, sv26, sv27, sv28, sv29, sv30, sv31, sv32, sv33, sv34, sv35, sv36, sv37, sv38, sv39, sv41, sv42, sv43, sv44, sv47, sv48, sv49, sv50, sv51, sv52, sv53, sv54, sv56, sv57, sv58, sv59, sv60, sv61, sv62, sv63, sv64, sv65, sv66, sv67, sv68, sv69, sv70, sv72, sv73, sv74, sv75, sv76, sv77, sv78, sv79, sv80, sv81, sv82, sv82_Size, sv83, sv84, sv85, sv86, Size, sv88, Size, sv89, sv89_Size, sv91, sv92, sv93, Decode_Status) => Message);



end CubedOS.test.API;
