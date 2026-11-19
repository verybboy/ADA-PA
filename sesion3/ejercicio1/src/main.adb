with Text_IO; use Text_IO;

procedure Main is
   task type tarea;
   contador:Integer:=0;

   task body tarea is
   begin
      for I in 1 .. 10_000_000 loop
         contador := contador + 1;
      end loop;
   end tarea;

   T1, T2:tarea;

begin
   Put_Line ("Contador final:" & Integer'Image (contador));
end Main;
