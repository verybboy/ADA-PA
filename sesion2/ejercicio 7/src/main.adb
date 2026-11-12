with Text_IO;

procedure Main is

   package Int_IO is new Text_IO.Integer_IO(Integer);
   type matriz is array (1..4, 1..4) of Integer;

   m:matriz;
   suma:Integer:=0;
begin
   for i in 1..4 loop
      for j in 1..4 loop
         Int_IO.Get(m(i,j));
      end loop;
   end loop;

   for i in 1..4 loop
      suma:=suma+m(i,i);
   end loop;

   Text_IO.Put_Line("Suma "&Integer'Image(suma));
end Main;
