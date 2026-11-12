with Text_IO;

procedure Main is

   package Int_IO is new Text_IO.Integer_IO(Integer);

   type Equivalencia is
      record
         Num_Romano: Character;
         Num_Entero: Integer;
      end record;

   type Array_Eq is array (1..14) of Equivalencia;
   Mi_Array:Array_Eq;
   Num_Roman:String (1..10);
   Valor_Act:Integer;
   Valor_Ant:Integer;
   Resultado:Integer;
   Longitud:Natural;

   procedure inicializacion is

   begin

      Mi_Array(1).Num_Romano:='X';
      Mi_Array(1).Num_Entero:=10;
      Mi_Array(2).Num_Romano:='x';
      Mi_Array(2).Num_Entero:=10;
      Mi_Array(3).Num_Romano:='L';
      Mi_Array(3).Num_Entero:=50;
      Mi_Array(4).Num_Romano:='l';
      Mi_Array(4).Num_Entero:=50;
      Mi_Array(5).Num_Romano:='I';
      Mi_Array(5).Num_Entero:=1;
      Mi_Array(6).Num_Romano:='i';
      Mi_Array(6).Num_Entero:=1;
      Mi_Array(7).Num_Romano:='V';
      Mi_Array(7).Num_Entero:=5;
      Mi_Array(8).Num_Romano:='v';
      Mi_Array(8).Num_Entero:=5;
      Mi_Array(9).Num_Romano:='M';
      Mi_Array(9).Num_Entero:=1000;
      Mi_Array(10).Num_Romano:='m';
      Mi_Array(10).Num_Entero:=1000;
      Mi_Array(11).Num_Romano:='D';
      Mi_Array(11).Num_Entero:=500;
      Mi_Array(12).Num_Romano:='d';
      Mi_Array(12).Num_Entero:=500;
      Mi_Array(13).Num_Romano:='C';
      Mi_Array(13).Num_Entero:=100;
      Mi_Array(14).Num_Romano:='c';
      Mi_Array(14).Num_Entero:=100;


   end inicializacion;

begin

   inicializacion;
   Resultado:=0;
   Valor_Act:=0;
   Valor_Ant:=0;

   Text_IO.Put("Escriba un número romano (máximo 10 cifras): ");
   Text_IO.Get_Line(Num_Roman,Longitud);

   for I in reverse 1 .. Longitud loop
      for J in 1..14 loop
         if Num_Roman(I)=Mi_Array(J).Num_Romano then
            Valor_Act:=Mi_Array(J).Num_Entero;
            if Valor_Act<Valor_Ant then
               Resultado:=Resultado-Valor_Act;
            else
               Resultado:=Resultado+Valor_Act;
            end if;
            Valor_Ant:=Valor_Act;
            exit;
         end if;
      end loop;
   end loop;

   --Text_IO . Put_Line ( Integer'Image ( Roman_To_Integer ( "MCMXC" ) ) ) ; -- 1990
   --Text_IO . Put_Line ( Integer'Image ( Roman_To_Integer ( "MMVIII" ) ) ) ; -- 2008
   -- Text_IO . Put_Line ( Integer'Image ( Roman_To_Integer ( "MDCLXVI" ) ) ) ; -- 1666

   Text_IO.Put("El resultado es: ");
   Int_IO.Put(Resultado);

end Main;
