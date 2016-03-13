with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

-- I found recently a clever Integer Square Root algorithm.
-- I don't claim (yet) to really understand how it works, but it does!
-- I implemented it already in Fortran, but why not also in Ada?
--
-- http://www.nuprl.org/MathLibrary/integer_sqrt/

procedure IntegerSqrt is

  function Isqrt(x: in Integer) return Integer is
    z  : Integer;
    r2 : Integer;
    r3 : Integer;
  begin
    if x = 0 then
      return 0;
    else
      z := x / 4;
      r2 := 2 * Isqrt(z);
      r3 := r2 + 1;
      if x < r3 * r3 then
        return r2;
      else
        return r3;
      end if;
    end if;
  end Isqrt;

begin
  for i in Integer range 1 .. 1000 loop
    Put(Isqrt(i));
  end loop;
end IntegerSqrt;
