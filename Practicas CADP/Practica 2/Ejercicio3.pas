Program Ejercicio3;
  var a: Integer;
  function uno;
    var b: Integer;
  begin
    b := 2;
    Writeln(b);
  end;
begin
  a:=1;
  uno;
  Writeln(a, b);
  // Hay un error de compilacion ya que se esta tratando de imprimir
  // una variable que no esta declarada como variable global como es 
  // en el caso de "a"
end.