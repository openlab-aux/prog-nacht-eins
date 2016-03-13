with Ada.Text_IO, Ada.Integer_Text_IO;

procedure Compute is

  procedure Double(Item : in out Integer) is
  begin
    Item := Item * 2;
  end Double;

  X : Integer := 1; -- local variable X of type Integer

  begin
  loop
    Ada.Integer_Text_IO.Put(X);
    Ada.Text_IO.New_Line;
    Double(X);
  end loop;
end Compute;
