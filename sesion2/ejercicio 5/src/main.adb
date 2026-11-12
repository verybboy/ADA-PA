with Text_IO;


procedure Main is
   function palindromo(cadena:String; longitud:Integer) return Boolean;
   
   function palindromo(cadena:String; longitud:Integer) return Boolean is
   begin
      for i in cadena'First..cadena'First+(longitud)/2 loop
         if cadena(i)/=cadena(cadena'First+longitud-1+cadena'First-i) then
            return False;
         end if;
      end loop;
      return true;
   end palindromo;
   
   
   cad1:String:="abccba";
   cad2:String(3..7):="somos";
   cad3:String(3..8):="sommos";
begin
   --  Insert code here.
   Text_IO.Put_Line(Boolean'Image(palindromo(cad1, cad1'Last)));
   Text_IO.Put_Line(Boolean'Image(palindromo(cad2, 5)));
   Text_IO.Put_Line(Boolean'Image(palindromo(cad3, cad3'Length)));
   
end Main;