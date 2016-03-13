with Ada.Integer_Text_IO; -- Importing a module.
use Ada.Integer_Text_IO; -- Using its namespace.

-- Find the sum of all the multiples of 3 or 5 below 1000.
-- We will use a simple "sieving" algorithm.
procedure Euler1 is
  -- We first must define the local variables we will need.
  Sieve : array(1 .. 999) of Boolean; -- "Below 1000" means 1 to 999.
  Sum   : Integer := 0; -- The sum will be built up progressively here.
begin
  -- The Sieve is just a boolean array, where True denotes whether the
  -- element's corresponding index is indeed a multiple of 3 or 5.
  -- We initialise all its elements first to False.
  Sieve := (others => False);
  -- I haven't yet found a way to do "native" stridden array slices...
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
