Program Ejercicio1;
  function suma(num : Integer; num2 : Integer);
  begin
    num2 := num + num2;
    num := 0;
  end;
  var i,x : Integer;
begin
  Readln(x);
  for i := 1 to 5 do
    suma(i, x);
  Writeln(x);
end.

{
  a) ¿Que imprime si se lee el valor 10 en la variable x?
  b) ¿Que imprime si se lee el valor 10 en la variable x y se cambia el encabezado del function por: 
    function suma(num : Integer; num2 : Integer);?
  c) ¿Que sucede si se cambia el ancabezado del function por: 
    function suma(var num : Integer; var num2 : Integer);?

  a) El valor que se imprime es 25
  b) El valor que se imprime es 10
  c) El valor que se imprime es Error: Illegal assignment to for-loop variable "i"
}