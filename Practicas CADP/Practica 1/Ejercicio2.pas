// Realizar un Programa que lea un numero Real e imprima su valor absoluto (el valor absoluto de un numero X se escribe |X|) y se definecomo 
// |X| = X cuando X es mayor o igusl a cero y |X| = -X cuando X es menor que cero.

Program Ejercicio2;
  var numero: Real;
begin
  Writeln('Ingrese un numero Real');
  Readln(numero);
  if numero >= 0 then
    Writeln('El valor absoluto es: ', numero:2:1)
  else
    Writeln('El valor absoluto es: -', numero:2:1);
end.