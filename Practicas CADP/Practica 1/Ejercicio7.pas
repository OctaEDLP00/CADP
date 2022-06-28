Program Ejercicio7;
  var
    precio_actual, precio_nuevo, aumento: Real;
    codigo:Integer;
begin
  precio_actual:=0;
	precio_nuevo:=0;
	aumento:=0;
  Writeln('Ingrese el codigo del producto: ');
  codigo:=0;
  Readln(codigo);
  
 while (codigo<>32767) do
   begin
     Writeln('Ingrese el precio actual: ');
     Readln(precio_actual);
     Writeln('El precio actual es: ', precio_actual:5:3);
     Writeln('Ingrese el precio nuevo: ');
     Readln(precio_nuevo);
     Writeln('El precio nuevo es: ', precio_nuevo:5:3);
     aumento:=((precio_nuevo - precio_actual) / precio_actual:5:3) * 100;
     Writeln('El porcentaje de aumento es de: ', aumento:3:2);
   end;
end.