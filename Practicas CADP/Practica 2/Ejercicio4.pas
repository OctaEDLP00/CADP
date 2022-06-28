Program uno;
  var a,b : Integer;
  function uno;
  begin
    a := 1;
    Writeln(a);
  end;
begin
  a := 1;
  b := 2;
  uno;
  Writeln(b, a);
  // imprime el valor de el function uno
  // imprime el de valor de a y b, (de esta manera 21), osea 2 1
end.

// ------------------------------------------ //

Program dos;
  function dos;
  begin
    a:=1;
    Writeln(a);
  end;
  var a,b : Integer;
begin
  a := 1;
  b := 2;
  dos;
  Writeln(b, a);
  // error de compilacion no se encuentra la variable "a"
  // en el function dos
end.