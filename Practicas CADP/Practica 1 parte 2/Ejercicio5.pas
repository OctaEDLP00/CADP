Program Ejercicio5;
var
  num, max, min, suma: Integer;
begin
  max:= -1;
  min:= 999;
  suma:= 0;
  repeat
    Writeln('Ingrese un número: ');
    Readln(num);
    if (num > max) then
      max:=num;
    if (num < min) then
      min:=num;
    suma:=suma+num;
  until(num = 0);
  Writeln ('Número MÁXIMO leído: ',max);
  Writeln ('Número MÍNIMO leído: ',min);
  Writeln ('SUMA de los números leídos: ',suma);
end.