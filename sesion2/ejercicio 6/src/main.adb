with Text_IO;

procedure Main is

   package Int_IO is new Text_IO.Integer_IO(Integer);

   function mcd (a:Integer; b:Integer) return Integer is
   begin
      if b=0 then
         return a;
      else
         return mcd(b,a mod b);
      end if;

   end mcd;

begin
   Int_IO.Put(mcd(25,5)); --5
   Int_IO.Put(mcd(57, 23)); --1
   Int_IO.Put(mcd(135, 18)); --9

   -- Aqui se puede añadir codigo para que el usuario interactue con el programa

end Main;
