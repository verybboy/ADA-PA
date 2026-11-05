with Text_IO; use Text_IO; --Para evitar poner todo el rato Text_IO, por ejemplo: Text_IO.Put("");

procedure Main is
   opcion:Integer;
   package Opcion_IO is new Integer_IO(Integer);

   procedure Ejercicio1 is
      package Natural_OI is new Integer_IO(Natural);
      variable_nat: Natural;
   begin
      Put("Introduce un valor por teclado: ");
      Natural_OI.Get(variable_nat);
      New_Line;
      Put("El valor de variable_nat es: " & Natural'Image(variable_nat)); -- El (') es como el (.) para ver las propiedades | Natural'Image(variable_nat) - Esto te convierte el valor "varibale_nat" a String
      --Natural_OI.Put(variable_nat);
   end Ejercicio1;

   procedure Ejercicio2 is
      package Natural_IO is new Integer_IO(Natural);
      subtype Rango10 is Natural range 1 .. 10;
      var_rango10:Rango10;
   begin
      Put("Introduce un valor(1-10): ");
      Natural_IO.Get(var_rango10);
      New_Line;
      Put("El valor de la variable es: " & Natural'Image(var_rango10));
   end Ejercicio2;

   procedure Ejercicio3 is
   begin
      null;
   end Ejercicio3;

   procedure Ejercicio4 is
      package Decimal_IO is new Float_IO(Float);
      subtype decimal is Float range 0.0 .. 1.0;
      num:decimal;

   begin
      Put_Line("Introduce un número(0.0 - 1.0): ");
      Flush;
      Decimal_IO.Get(num);
   end Ejercicio4;

   procedure Ejercicio7 is
      type DiasSemana is (lunes, martes, miercoles, jueves, viernes, sábado, domingo);
   begin
      For i in DiasSemana loop
         Put_Line(DiasSemana'Image(i));
      End loop;
   end Ejercicio7;



begin
   --  Insert code here.
   Put_Line("---------------------");
   Put_Line("SELECCIONA UNA OPCION");
   Put_Line("---------------------");
   Put_Line("1. Ejercicio1");
   Put_Line("2. Ejercicio2");
   Put_Line("3. Ejercicio3");
   Put_Line("4. Ejercicio4");
   Put_Line("7. Ejercicio7");
   Put_Line("Pulsa otra tecla para salir");
   Opcion_IO.Get(opcion);

   case opcion is
      when 1 =>
         Ejercicio1;
      when 2 =>
         Ejercicio2;
      when 3 =>
         Ejercicio3;
      when 4 =>
         Ejercicio4;
      when 7 =>
         Ejercicio7;
      when others =>
         null; -- Esto se necesita en caso de que no hayamos declarado nada.
   end case;
end Main;
