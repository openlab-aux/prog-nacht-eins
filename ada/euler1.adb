with Ada.Integer_Text_IO;
use Ada.Integer_Text_IO;

-- Find the sum of all the multiples of 3 or 5 below 1000.
procedure Euler1 is
  -- We will use a simple "sieving" algorithm.
  Sieve : array(1 .. 999) of Boolean; -- "Below 1000" means 1 to 999.
  Sum   : Integer := 0; -- The sum will be built up progressively here.
begin
  -- The Sieve is just a boolean array, where True denotes whether the
  -- element's corresponding index is indeed a multiple of 3 or 5.
  -- We initialise its elements first to False.
  Sieve := (others => False);
  -- Set to True all elements divisible by 3.
  for i in Integer range 1 .. 999/3 loop
    Sieve(3*i) := True;
  end loop;
  -- Set to True all elements divisible by 5.
  for i in Integer range 1 .. 999/5 loop
    Sieve(5*i) := True;
  end loop;
  -- Where the Sieve holds True, add the corresponding integer to the Sum.
  for i in Integer range 1 .. 999 loop
    if Sieve(i) then
      Sum := Sum + i;
    end if;
  end loop;
  -- Finally, print our result, which should be 233168.
  Put(Sum);

end Euler1;
