Program Ejercicio1;
  var
    i: Integer;
    numero, num_anterior: Integer;
begin
  numero := 0;
  for i:=0 to 10 do
  begin
    Writeln('Ingrese un numero: ');
    Readln(numero);
    num_anterior := numero;
    numero := numero + num_anterior;
    if (numero > 5) then Writeln('El numero ingresado es mayor a 5'); // ejercicio: 1)a. 
  end;
end.