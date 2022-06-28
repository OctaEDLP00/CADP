Program Ejercicio9;
var
  caracter: char;
  numero: Integer;
  suma: Integer;
  resta: Integer;
  error: Boolean;
begin
  suma := 0;
  resta := 0;
  error := false;
  Writeln('Ingrese un caracter: ');
  Readln(caracter);
  while (caracter <> '0') and (error = false) do
  begin
    if (caracter = '+') then
    begin
      Writeln('Ingrese un numero: ');
      Readln(numero);
      suma := suma + numero;
    end
    else if (caracter = '-') then
    begin
      Writeln('Ingrese un numero: ');
      Readln(numero);
      resta := resta + numero;
    end
    else
    begin
      Writeln('Error: Ingrese un caracter valido');
      error := true;
    end;
    Writeln('Ingrese un caracter: ');
    Readln(caracter);
  end;
  Writeln('La suma es: ', suma);
  Writeln('La resta es: ', resta);
end.
