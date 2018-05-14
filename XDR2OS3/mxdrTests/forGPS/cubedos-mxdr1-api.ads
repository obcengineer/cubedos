--------------------------------------------------------------------------------
-- FILE   : cubedos-MXDR1-api.ads
-- SUBJECT: Specification of a package that defines the MXDR1 API
-- AUTHOR : (C) Copyright 2017 by Vermont Technical College
-- All the subprograms in this package must be task safe. They can be simultaneously
--called from multiple tasks. If possible, make every subprogram here a pure function.
--------------------------------------------------------------------------------
pragma SPARK_Mode(On);

with CubedOS.Lib;
with Message_Manager;  use Message_Manager;
with System;

package CubedOS.MXDR1.API is

   type Message_Type is
      (Example, 
      Bluish, 
      Reddish);

   type Color is
      (red, 
      green, 
      blue);

   type Hello is new Lib.Quadruple_Octet range 1 .. 2;

   gorilla: constant := 2;

   whatever: constant := 1;

   type arnold is array (0 .. 10) of Double;

   type boo is new Boolean;

   type hyp is new Lib.Hyper_Type range 1 .. 200;

   type hyp2 is new Lib.U_Hyper_Type range 1 .. 200;

   type Width_Type is new Lib.Quadruple_Octet range 1 .. 100;

   subtype horse is Width_Type range 1 .. 10;

   type banana is new Lib.Quadruple_Octet range 0 .. 1;

   type grape is new Lib.Quadruple_Octet range 1 .. 2;

   type seed is new Lib.Quadruple_Octet range 0 .. 2.0;

   subtype stem is seed range 0 .. 2.0;

   type branch is array (0 .. 10000) of stem;

   type bat is 
      record
         h : Color;
         j : Width_Type;
         Tree_Limb : branch;
      end record;

   type cat is 
      record
         u : bat;
         i : Double;
         y : Lib.Quadruple_Octet;
      end record;

   type sat is 
      record
         k : Integer;
         led : cat;
         u : bat;
      end record;

   type Other_Colors is
      (yellow, 
      orange, 
      violet);

   function Reddish_Encode
      (Sender_Domain : Domain_ID_Type;
      Sender  : Module_ID_Type;
      i : Color;
      y : Integer;
      b : banana;
      bo : boo;
      hypey2 : hyp2;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   with
      Global => null;

   function Is_Reddish(Message : Message_Record) return Boolean is
      (Message.Sender = ID and Message.Message_ID = Message_Type'Pos(Reddish));

   procedure Reddish_Decode
      (Message : in  Message_Record;
      i : out Color;
      y : out Integer;
      b : out banana;
      bo : out boo;
      hypey2 : out hyp2;
      Decode_Status : out Message_Status_Type)
   with
      Global => null,
      Pre => Is_Reddish(Message),
      Depends => ((i, y, b, bo, hypey2, Decode_Status) => Message);


   function Bluish_Encode
      (Receiver_Domain : Domain_ID_Type;
      Receiver  : Module_ID_Type;
      r : Other_Colors;
      g : grape;
      a : arnold;
      schwarz : Float;
      s : seed;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   with
      Global => null;

   function Is_Bluish(Message : Message_Record) return Boolean is
      (Message.Receiver = ID and Message.Message_ID = Message_Type'Pos(Bluish));

   procedure Bluish_Decode
      (Message : in  Message_Record;
      r : out Other_Colors;
      g : out grape;
      a : out arnold;
      schwarz : out Float;
      s : out seed;
      Decode_Status : out Message_Status_Type)
   with
      Global => null,
      Pre => Is_Bluish(Message),
      Depends => ((r, g, a, schwarz, s, Decode_Status) => Message);


   function Example_Encode
      (Sender_Domain : Domain_ID_Type;
      Sender  : Module_ID_Type;
      thing : Width_Type;
      cube : sat;
      hypey : hyp;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   with
      Global => null;

   function Is_Example(Message : Message_Record) return Boolean is
      (Message.Sender = ID and Message.Message_ID = Message_Type'Pos(Example));

   procedure Example_Decode
      (Message : in  Message_Record;
      thing : out Width_Type;
      cube : out sat;
      hypey : out hyp;
      Decode_Status : out Message_Status_Type)
   with
      Global => null,
      Pre => Is_Example(Message),
      Depends => ((thing, cube, hypey, Decode_Status) => Message);



end CubedOS.MXDR1.API;
