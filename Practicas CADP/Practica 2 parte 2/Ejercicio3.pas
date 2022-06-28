Program Ejercicio3;
  function sumar(a,b,c : Integer);
    var suma : Integer;
  begin
    for i := a to b do
      suma := suma +i;
    c := c + suma;
  end;
  var result : Integer;
begin
  result := 0;
  Readln(a); Readln(b);
  sumar(a,b,0);
  Writeln('La suma total es: ', result);
  ok := (result >= 10) OR (result <= 30);
  if (NOT ok) then
    Writeln('La suma no quedo entre 10 y 30');
end.

{
  1. La variable "ok" no esta definida (linea 9) pero esta 
    inicializada (linea 15) y esta larga un error de 
    Error: Incompatible types: got "Boolean" expected "SmallInt"
    y la linea 16 espera un tipo de dato Boolean y es de tipo
    SmallInt. Error: Incompatible types: got "SmallInt" expected "Boolean"
  
  2. La variable "i" del function no esta definida (linea 5)
  
  3. La variable "a" del bucle (5,14) del procedimiento 
    deberia ser un numero y deberia usarse para 
    otro contexto ya que tira el error que la variable 
    del contador es ilegal (Error: Illegal counter variable)
  
  4. La variable "a" del Programa principal no esta
    definida
  
  5. La variable "b" del Programa principal no esta
    definida
  
  6. el las condiciones que tiene el ok de la linea 15 pdrian 
    pasar a estar con un if quedando asi:
    if (result >= 10) OR (result <= 30) then 
      Writeln('La suma no quedo entre 10 y 30');
    

}