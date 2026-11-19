with Text_IO;

-- RESUELTO POR LA IA, ENTENDER

procedure Main is
   task tarea is
      entry sensor1 (valor : in Integer);
      entry sensor2 (valor : in Integer; doble : out Integer);
   end tarea;

   task body tarea is
   begin
      loop
         select
            accept sensor1 (valor : in Integer) do
               Text_IO.Put_Line ("sensor1 recibe" & Integer'Image (valor));
            end sensor1;
         or
            accept sensor2 (valor : in Integer; doble : out Integer) do
               doble := valor * 2;
            end sensor2;
         or
            terminate;
         end select;
      end loop;
   end tarea;

   resultado : Integer;
begin
   tarea.sensor1 (5);
   tarea.sensor2 (7, resultado);

   Text_IO.Put_Line ("sensor2 devuelve" & Integer'Image (resultado));
end Main;
