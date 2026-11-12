with Text_IO;
procedure Main is
   fich1:String:="fichero.txt";



   function lineas(fich1:String) return Integer is
      fp1:Text_IO.File_Type;
      n:Integer:=0;
   begin
      Text_IO.Open(fp1, Text_IO.In_File, fich1);
      while not Text_IO.End_Of_File(fp1) loop
         declare
            cad:String:=Text_IO.Get_Line(fp1);
         begin
            n:=n+1;
         end;
      end loop;
      Text_IO.Close(fp1);
      return n;
   end lineas;


begin
   --  Insert code here.
   Text_IO.Put_Line("Lineas "&Integer'Image(lineas(fich1)));
end Main;


