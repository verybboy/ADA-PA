with Text_IO;

-- Version 1 y 2 en Ejercicio1

procedure Main is
   task type tarea;
   type listaTareas is array(1..20) of tarea; -- [VERSION 3] Creamos el tipo de array de tareas
   contador:Integer:=0;

   task body tarea is
   begin
      for i in 1..10_000_000 loop
         contador:=contador+1;
      end loop;
   end tarea;

   procedure ejecutarTareas is
      tareas:listaTareas;
   begin
      null;
   end ejecutarTareas;

begin
   ejecutarTareas;
   Text_IO.Put_Line("Valor "&Integer'Image(contador));
end Main;
