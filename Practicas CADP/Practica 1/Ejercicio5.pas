Program Ejercicio5;
  type numeros = 1..10;
  var num, num_doble: Real; contador: numeros;
begin
  contador:=1;
  Writeln('Ingrese un numero Real');
  Readln(num);
  while(num_doble/2<>num) do 
    contador := contador + 1;
    Readln(num_doble);
  end;
  Writeln('El numero que es el doble del Real es: ', num_doble:2:1);
end.

Program Ejercicio5SegundaSolucion;
  var num, num_doble: Real;i: Integer;
begin
  Writeln('Ingrese un numero Real');
  Readln(num)
  for (i= 1 to 10) do
    if (num_doble/2<>num) then  
      Writeln('El numero que es el doble del Real es: ', num_doble:2:1)
    else 
      Readln(num_doble);
  end;
end.