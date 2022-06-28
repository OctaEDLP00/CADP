Program Ejercicio2;
var i,num,menor,mayor: Integer;
begin
  menor:= -1;
  i:= 1;
  Writeln('Ingrese 10 numeros enteros');
  for i to 10 do
  begin
    Readln(num);
    if i=1 then
      menor:=num;
    if num>menor then
      mayor:=num;
      Writeln('El numero mayor es: ',mayor, 'y su posicion en es: ',i); //ejerccio 2)a. added msg '...y su posicion es : i'
  end;
end.