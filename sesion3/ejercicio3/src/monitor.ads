-- En este archivo definimos las cabecera del paquete y del objeto protegido / ¿aquí se define el objeto protegido?

package monitor is
   
   protected type SharedContador(tope:Integer) is
      function read return Integer;
      procedure increment;
      entry esperar;
   
      private
      contador:Integer:=0;
      limite:Integer:=tope;
   end SharedContador;

end monitor;
