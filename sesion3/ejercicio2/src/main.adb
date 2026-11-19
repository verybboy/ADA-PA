with Text_IO; use Text_IO;

procedure Main is
   contador : Integer := 0;

   procedure incrementar is
      task type tarea;
      tareas : array (1 .. 20) of tarea;

      task body tarea is
      begin
         for i in 1 .. 10_000_000 loop
            contador := contador + 1;
         end loop;
      end tarea;
   begin
      null;
   end incrementar;

begin
   incrementar;
   Put_Line ("Contador final:" & Integer'Image (contador));
end Main;
