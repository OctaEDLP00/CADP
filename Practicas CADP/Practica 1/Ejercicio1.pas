Program Ejercicio1;
  var numero, numero2: Integer;
begin
  Writeln('Ingrese un numero');
  Readln(numero);
  Writeln('Ingrese otro numero');
  Readln(numero2);
  if (numero > numero2) then
    Writeln('El numero mayor es: ', numero);
  if (numero2 > numero) then
    Writeln('El numero mayor es: ', numero2);
  if (numero = numero2) then
    Writeln('Los numeros son iguales');
end.


{
  const convertToArray = number => [...`${number}`
  //].map(el => parseInt(el))
  // convertToArray(1234567)
}