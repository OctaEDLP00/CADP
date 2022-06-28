{
  Realizar un Programa que lea 1000 numeros enteros desde teclado.
  Informar en pantalla cuales son los dos numeros minimos leidos.
}

Program Ejercicio4;
type 
var 
  numero: Integer;
  minimo1: Integer;
  minimo2: Integer;
  maximo: Integer;
  contador: Integer;
begin 
  minimo1 := 0;
  minimo2 := 0;
  maximo := 0;
  contador := 0;
  Writeln('Ingrese 1000 numeros enteros:');
  while (contador < 1000) do
  begin
    Readln(numero);
    if (contador = 0) then
    begin
      minimo1 := numero;
      minimo2 := numero;
      maximo := numero;
    end
    else
    begin
      if (numero < minimo1) then
      begin
        minimo2 := minimo1;
        minimo1 := numero;
      end
      else
      begin
        if (numero < minimo2) then
        begin
          minimo2 := numero;
        end;
      end;
      if (numero > maximo) then
      begin
        maximo := numero;
      end;
    end;
    contador := contador + 1;
  end;
end.