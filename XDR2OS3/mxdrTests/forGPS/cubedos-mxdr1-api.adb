--------------------------------------------------------------------------------
-- FILE   : cubedos-MXDR1-api.adb
-- SUBJECT: Body of a package that implements the MXDR1 API
-- AUTHOR : (C) Copyright 2017 by Vermont Technical College
-- All the subprograms in this package must be task safe. They can be simultaneously
--called from multiple tasks. If possible, make every subprogram here a pure function.
--------------------------------------------------------------------------------
pragma SPARK_Mode(On);

with CubedOS.Lib.XDR;
with CubedOS.Lib;
use CubedOS.Lib;
use CubedOS.Lib.XDR;

package body CubedOS.MXDR1.API is

   function Reddish_Encode
      (Sender_Domain : Domain_ID_Type;
      Sender : Module_ID_Type;
      i : Color;
      y : Integer;
      b : banana;
      bo : boo;
      hypey2 : hyp2;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   is
      Message : Message_Record;
      Request_ID : Request_ID_Type;
      Position : XDR_Index_Type;
      Last : XDR_Index_Type;
   begin
      Get_Next_Request_ID(Request_ID);
      Message := Make_Empty_Message(
         Sender_Domain   => Sender_Domain,
         Receiver_Domain => Domain_ID,
         Sender     => Sender,
         Receiver   => ID,
         Request_ID   => Request_ID,
         Message_ID => Message_Type'Pos(Reddish),
         Priority   => Priority);
      Position := 0;
      XDR.Encode(XDR.XDR_Unsigned(Color'Pos(i)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(y), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(b), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Boolean'Val(boo'Pos(bo)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned_Hyper(hypey2), Message.Payload, Position, Last);
      Position := Last + 1;
      Message.Size := Position;
      return Message;
   end Reddish_Encode;

   procedure Reddish_Decode
      (Message : in  Message_Record;
      i : out Color;
      y : out Integer;
      b : out banana;
      bo : out boo;
      hypey2 : out hyp2;
      Decode_Status : out Message_Status_Type)
   is
      Position : XDR_Index_Type;
      Raw_i : XDR.XDR_Unsigned;
      Raw_y   : XDR.XDR_Integer;
      Raw_b   : XDR.XDR_Unsigned;
      Raw_bo   : XDR.XDR_Boolean;
      Raw_hypey2   : XDR.XDR_Unsigned_Hyper;
      Last : XDR_Index_Type;
   begin
      pragma Warnings
         (Off, "unused assignment to ""Last""", Reason => "The last value of Last is not needed");
      Decode_Status := Success;
      y := Integer(XDR.XDR_Integer'First);
      b := banana'First;
      bo := boo'First;
      hypey2 := hyp2'First;
      Position := 0;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_i, Last);
         Position := Last + 1;
         if Raw_i in Color'Pos(Color'First) .. Color'Pos(Color'Last) then
            i := Color'Val(Raw_i);
         else
            Decode_Status := Malformed;
            i := Color'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_y, Last);
         Position := Last + 1;
         if Raw_y in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            y := Integer(Raw_y);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_b, Last);
         Position := Last + 1;
         if Raw_b in XDR.XDR_Unsigned(banana'First) .. XDR.XDR_Unsigned(banana'Last) then
            b := banana(Raw_b);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_bo, Last);
         Position := Last + 1;
         bo := boo'Val(XDR.XDR_Boolean'Pos(Raw_bo));
         Decode_Status := Success;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_hypey2, Last);
         if Raw_hypey2 in XDR.XDR_Unsigned_Hyper(hyp2'First) .. XDR.XDR_Unsigned_Hyper(hyp2'Last) then
            hypey2 := hyp2(Raw_hypey2);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
   end Reddish_Decode;

   function Bluish_Encode
      (Receiver_Domain : Domain_ID_Type;
      Receiver : Module_ID_Type;
      r : Other_Colors;
      g : grape;
      a : arnold;
      schwarz : Float;
      s : seed;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   is
      Message : Message_Record := Make_Empty_Message(
         Sender_Domain   => Domain_ID,
         Receiver_Domain => Receiver_Domain,
         Sender     => ID,
         Receiver   => Receiver,
         Request_ID   => 0,
         Message_ID => Message_Type'Pos(Bluish),
         Priority   => Priority);
      Position : XDR_Index_Type;
      Last : XDR_Index_Type;
   begin
      Position := 0;
      XDR.Encode(XDR.XDR_Unsigned(Other_Colors'Pos(r)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(g), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 10 loop
         XDR.Encode(XDR.XDR_Double(a(I), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Float(schwarz), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(s), Message.Payload, Position, Last);
      Position := Last + 1;
      Message.Size := Position;
      return Message;
   end Bluish_Encode;

   procedure Bluish_Decode
      (Message : in  Message_Record;
      r : out Other_Colors;
      g : out grape;
      a : out arnold;
      schwarz : out Float;
      s : out seed;
      Decode_Status : out Message_Status_Type)
   is
      Position : XDR_Index_Type;
      Raw_r : XDR.XDR_Unsigned;
      Raw_g   : XDR.XDR_Unsigned;
      Raw_a   : XDR.XDR_Double;
      Raw_schwarz   : XDR.XDR_Float;
      Raw_s   : XDR.XDR_Unsigned;
      Last : XDR_Index_Type;
   begin
      pragma Warnings
         (Off, "unused assignment to ""Last""", Reason => "The last value of Last is not needed");
      Decode_Status := Success;
      g := grape'First;
      for I in Integer range 0 .. 10 loop
         a(I) := arnold'First;
      end loop;
      schwarz := Float'First;
      s := seed'First;
      Position := 0;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_r, Last);
         Position := Last + 1;
         if Raw_r in Other_Colors'Pos(Other_Colors'First) .. Other_Colors'Pos(Other_Colors'Last) then
            r := Other_Colors'Val(Raw_r);
         else
            Decode_Status := Malformed;
            r := Other_Colors'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_g, Last);
         Position := Last + 1;
         if Raw_g in XDR.XDR_Unsigned(grape'First) .. XDR.XDR_Unsigned(grape'Last) then
            g := grape(Raw_g);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      for I in Integer range 0 .. 10 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_a, Last);
            Position := Last + 1;
            if Raw_a in XDR.XDR_Double(arnold'First) .. XDR.XDR_Double(arnold'Last) then
               a(I) := arnold(Raw_a);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_schwarz, Last);
         Position := Last + 1;
         if Raw_schwarz in XDR.XDR_Float(Float'First) .. XDR.XDR_Float(Float'Last) then
            schwarz := Float(Raw_schwarz);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_s, Last);
         if Raw_s in XDR.XDR_Unsigned(seed'First) .. XDR.XDR_Unsigned(seed'Last) then
            s := seed(Raw_s);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
   end Bluish_Decode;

   function Example_Encode
      (Sender_Domain : Domain_ID_Type;
      Sender : Module_ID_Type;
      thing : Width_Type;
      cube : sat;
      hypey : hyp;
      Priority : System.Priority := System.Default_Priority) return Message_Record
   is
      Message : Message_Record;
      Request_ID : Request_ID_Type;
      Position : XDR_Index_Type;
      Last : XDR_Index_Type;
   begin
      Get_Next_Request_ID(Request_ID);
      Message := Make_Empty_Message(
         Sender_Domain   => Sender_Domain,
         Receiver_Domain => Domain_ID,
         Sender     => Sender,
         Receiver   => ID,
         Request_ID   => Request_ID,
         Message_ID => Message_Type'Pos(Example),
         Priority   => Priority);
      Position := 0;
      XDR.Encode(XDR.XDR_Unsigned(thing), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Integer(cube.k), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Color'Pos(cube.led.u.h)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(cube.led.u.j), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 10000 loop
         XDR.Encode(XDR.XDR_Unsigned(cube.led.u.Tree_Limb(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Double(cube.led.i), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(cube.led.y), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(Color'Pos(cube.u.h)), Message.Payload, Position, Last);
      Position := Last + 1;
      XDR.Encode(XDR.XDR_Unsigned(cube.u.j), Message.Payload, Position, Last);
      Position := Last + 1;
      for I in Integer range 0 .. 10000 loop
         XDR.Encode(XDR.XDR_Unsigned(cube.u.Tree_Limb(I)), Message.Payload, Position, Last);
         Position := Last + 1;
      end loop;
      XDR.Encode(XDR.XDR_Hyper(hypey), Message.Payload, Position, Last);
      Position := Last + 1;
      Message.Size := Position;
      return Message;
   end Example_Encode;

   procedure Example_Decode
      (Message : in  Message_Record;
      thing : out Width_Type;
      cube : out sat;
      hypey : out hyp;
      Decode_Status : out Message_Status_Type)
   is
      Position : XDR_Index_Type;
      Raw_thing   : XDR.XDR_Unsigned;
      Raw_cube_k   : XDR.XDR_Integer;
      Raw_cube_led_u_h : XDR.XDR_Unsigned;
      Raw_cube_led_u_j   : XDR.XDR_Unsigned;
      Raw_cube_led_u_Tree_Limb   : XDR.XDR_Unsigned;
      Raw_cube_led_i   : XDR.XDR_Double;
      Raw_cube_led_y   : XDR.XDR_Unsigned;
      Raw_cube_u_h : XDR.XDR_Unsigned;
      Raw_cube_u_j   : XDR.XDR_Unsigned;
      Raw_cube_u_Tree_Limb   : XDR.XDR_Unsigned;
      Raw_hypey   : XDR.XDR_Hyper;
      Last : XDR_Index_Type;
   begin
      pragma Warnings
         (Off, "unused assignment to ""Last""", Reason => "The last value of Last is not needed");
      Decode_Status := Success;
      thing := Width_Type'First;
      cube.k := Integer(XDR.XDR_Integer'First);
      cube.led.u.h := Color'First;
      cube.led.u.j := Width_Type'First;
      for I in Integer range 0 .. 10000 loop
         cube.led.u.Tree_Limb(I) := branch'First;
      end loop;
      cube.led.i := Double'First;
      cube.led.y := Lib.Quadruple_Octet(XDR.XDR_Unsigned'First);
      cube.u.h := Color'First;
      cube.u.j := Width_Type'First;
      for I in Integer range 0 .. 10000 loop
         cube.u.Tree_Limb(I) := branch'First;
      end loop;
      hypey := hyp'First;
      Position := 0;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_thing, Last);
         Position := Last + 1;
         if Raw_thing in XDR.XDR_Unsigned(Width_Type'First) .. XDR.XDR_Unsigned(Width_Type'Last) then
            thing := Width_Type(Raw_thing);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_cube_k, Last);
         Position := Last + 1;
         if Raw_cube_k in XDR.XDR_Integer(Integer'First) .. XDR.XDR_Integer(Integer'Last) then
            cube.k := Integer(Raw_cube_k);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_cube_led_u_h, Last);
         Position := Last + 1;
         if Raw_cube_led_u_h in Color'Pos(Color'First) .. Color'Pos(Color'Last) then
            cube.led.u.h := Color'Val(Raw_cube_led_u_h);
         else
            Decode_Status := Malformed;
            cube.led.u.h := Color'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_cube_led_u_j, Last);
         Position := Last + 1;
         if Raw_cube_led_u_j in XDR.XDR_Unsigned(Width_Type'First) .. XDR.XDR_Unsigned(Width_Type'Last) then
            cube.led.u.j := Width_Type(Raw_cube_led_u_j);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      for I in Integer range 0 .. 10000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_cube_led_u_Tree_Limb, Last);
            Position := Last + 1;
            if Raw_cube_led_u_Tree_Limb in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               cube.led.u.Tree_Limb(I) := branch(Raw_cube_led_u_Tree_Limb);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_cube_led_i, Last);
         Position := Last + 1;
         if Raw_cube_led_i in XDR.XDR_Double(Double'First) .. XDR.XDR_Double(Double'Last) then
            cube.led.i := Double(Raw_cube_led_i);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_cube_led_y, Last);
         Position := Last + 1;
         if Raw_cube_led_y in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
            cube.led.y := Lib.Quadruple_Octet(Raw_cube_led_y);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_cube_u_h, Last);
         Position := Last + 1;
         if Raw_cube_u_h in Color'Pos(Color'First) .. Color'Pos(Color'Last) then
            cube.u.h := Color'Val(Raw_cube_u_h);
         else
            Decode_Status := Malformed;
            cube.u.h := Color'First;
         end if;
      end if;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_cube_u_j, Last);
         Position := Last + 1;
         if Raw_cube_u_j in XDR.XDR_Unsigned(Width_Type'First) .. XDR.XDR_Unsigned(Width_Type'Last) then
            cube.u.j := Width_Type(Raw_cube_u_j);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
      for I in Integer range 0 .. 10000 loop
         if Decode_Status = Success then
            XDR.Decode(Message.Payload, Position, Raw_cube_u_Tree_Limb, Last);
            Position := Last + 1;
            if Raw_cube_u_Tree_Limb in XDR.XDR_Unsigned(Lib.Quadruple_Octet'First) .. XDR.XDR_Unsigned(Lib.Quadruple_Octet'Last) then
               cube.u.Tree_Limb(I) := branch(Raw_cube_u_Tree_Limb);
               Decode_Status := Success;
            else
               Decode_Status := Malformed;
            end if;
         end if;
      end loop;
      if Decode_Status = Success then
         XDR.Decode(Message.Payload, Position, Raw_hypey, Last);
         if Raw_hypey in XDR.XDR_Hyper(hyp'First) .. XDR.XDR_Hyper(hyp'Last) then
            hypey := hyp(Raw_hypey);
            Decode_Status := Success;
         else
            Decode_Status := Malformed;
         end if;
      end if;
   end Example_Decode;


end CubedOS.MXDR1.API;
