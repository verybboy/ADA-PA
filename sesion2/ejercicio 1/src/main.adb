with Text_IO;
procedure Main is
   elementos:Integer:=5;
   package Int_IO is new Text_IO.Integer_IO(Integer);
   type Lista is array (1..elementos) of Integer;
   list:Lista;
   repetido:Boolean:=False;
begin
   --  Insert code here.

   for i in 1..elementos loop
      Int_IO.get(list(i));
   end loop;

   for i in 1..elementos loop
      repetido:=False;
      for j in 1..(i-1) loop
         if list(i)=list(j) then
            repetido:=TRue;
         end if;
      end loop;

          if not repetido then
            Int_IO.Put(list(i));
            Text_IO.New_Line;
         end if;

   end loop;


   null;
end Main;


