with Text_IO;
procedure Main is
   filas:Integer;
   columnas:Integer;
   package Int_IO is new Text_IO.Integer_IO(Integer);
   type Matriz is array (Positive range <>, Positive range <>) of Integer;
   temp:Integer;
begin
   --  Insert code here.

   Int_IO.get(filas);
   Int_IO.get(columnas);

   declare
      m:Matriz(1..filas, 1..columnas);
      type Matriz2 is array(1..filas, 1..columnas) of Integer;
      m2:Matriz2:=(others=>(others=>1));
   begin
      temp:=3765;

      for i in 1..filas loop
         for j in 1..columnas loop
            m(i,j):=temp;
            temp:=temp+3675;
         end loop;
      end loop;

      for i in 1..filas loop
         for j in 1..columnas loop
            Text_IO.Put(Integer'Image(m(i,j))&" ");
         end loop;
         Text_IO.New_Line;
      end loop;
   end;

end Main;


