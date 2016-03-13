-- Print some text to the screen.
with Ada.Text_IO;
--use Ada.Text_IO; -- This is like "namespace"
procedure Hello is
begin
  Ada.Text_IO.Put_Line ("Hello world!");
end Hello;
