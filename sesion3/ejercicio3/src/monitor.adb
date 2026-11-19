package body monitor is
  protected body SharedContador is
      function read return integer is
      begin
         return contador;
      end read; 
      
      procedure increment is
      begin
         contador:=contador+1;
      end increment;
      
      entry esperar
        when contador=limite is --Espera para que no haya un bloqueo
      begin
         null;
      end esperar;
      
   end SharedContador;   
end monitor;
