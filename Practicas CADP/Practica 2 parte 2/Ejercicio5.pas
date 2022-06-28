Program Ejercicio5;
function pares (numA : Integer; var numB : Integer);
begin
  if (numB = numA * 2) then
    Writeln('El segundo numero es el doble del primero')
end;
  var par, impar, numA, numB : Integer;
begin
  par := 0;
  impar := 0;
  repeat 
    Writeln('Ingrese ingrese una secuencia de numeros:' \n 'Ejemplo: (1;2), (2;4), (3;6)...');
    Readln(numA);
    Readln(numB);
    pares(numA, numB);
    if ((numA mod 2 = 0) OR (numB mod 2 = 0)) then
      par := par + 1
    else
      impar := impar + 1
  until((numA = 0) and (numB = 0));
    Writeln('La cantidad de numeros pares es: ', par);
    Writeln('La cantidad de numeros impares es: ', impar);
end.