Program Ejercicio6;
type
  codigos = 1..200;
var
  codigo, pares_mayores :codigos;
  precios, precio_promedio, promedio :Real;
  productos, i :Integer;
begin
  productos:=0;
  pares_mayores:=0;
  promedio:=0;
  codigo:=0;
  precio:=0;
  precio_promedio:=0;

  for i:=1 to 10 do begin 
    Writeln('Ingrese el codigo del producto: ');
    Readln(codigo);
    Writeln('Ingrese el precio del producto: ');
    Readln(precio);
    productos:=productos+1;

    if ((codigo mod 2 = 0) and (precio > precio_promedio)) then
      precio_promedio := precio;
      pares_mayores := pares_mayores + 1;
    if (codigo mod 2 = 0) then
      promedio := promedio + precio;
      productos := productos + 1;
  end;
end.
