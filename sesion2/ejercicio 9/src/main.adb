with Text_IO;
with Sequential_IO;
procedure Main is
   package Seq_IO is new Sequential_IO(Character);
   c:Character;
   fich1:String:="palindromo.exe";
   fich2:String:="palindromo2.exe";
   fp1:Seq_IO.File_Type;
   fp2:Seq_IO.File_Type;
begin
   --  Insert code here.

   Seq_IO.Open(fp1, Seq_IO.In_File, fich1);
   Seq_IO.Create(fp2, Seq_IO.Out_File, fich2);
   while not Seq_IO.End_Of_File(fp1) loop
      Seq_IO.read(fp1, c);
      Seq_IO.write(fp2, c);
   end loop;
   Seq_IO.Close(fp1);
   Seq_IO.Close(fp2);
end Main;


