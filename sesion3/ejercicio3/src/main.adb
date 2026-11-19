-- En este ejercicio hacemos uso de paquetes y de objetos protegidos
-- Esto si funciona bien da el valor de contador
with Text_IO;
with monitor; -- use monitor;

procedure Main is

   contador:monitor.SharedContador(20_000_000);

   task type tarea;
   type listaTareas is array(1..2) of tarea;

   task body tarea is
   begin
      for i in 1..10_000_000 loop
         contador.increment;
      end loop;
   end tarea;

   procedure ejecutarTareas is
      tareas:listaTareas;
   begin
      null;
   end ejecutarTareas;

   tareas:listaTareas;
begin
   contador.esperar;
   Text_IO.Put_Line("Valor "&Integer'Image(contador.read));
end Main;
