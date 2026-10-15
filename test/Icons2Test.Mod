MODULE Icons2Test;  (** Icons2Test.Run: the icons of Icons2.Lib found by name; needs the desktop's display *)

IMPORT Objects, Gadgets, Out := out;

VAR fails, checks: LONGINT;

PROCEDURE Check(what: ARRAY OF CHAR; ok: BOOLEAN);
BEGIN
  INC(checks);
  IF ~ok THEN INC(fails); Out.String("FAIL "); Out.String(what); Out.Ln END
END Check;

PROCEDURE Run*;
BEGIN
  fails := 0; checks := 0;
  Check("Icons2.Solitaire", Gadgets.FindPublicObj("Icons2.Solitaire") # NIL);
  Check("Icons2.Bombe", Gadgets.FindPublicObj("Icons2.Bombe") # NIL);
  Out.String("Icons2Test: "); Out.Int(checks, 0); Out.String(" checks, "); Out.Int(fails, 0); Out.String(" failed"); Out.Ln
END Run;

END Icons2Test.
