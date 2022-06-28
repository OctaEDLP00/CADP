Program Ejercicio2;
  function dig_pares_impares(num : Integer; var par, impar : Integer);
  var dig : Integer;
  begin
    while (num <> 0) do begin
      dig := num mod 10;
      if ((dig mod 2 ) = 0) then
        par := par + 1
      else
        impar := impar + dig;
      num := num div 10;
    end;
  end;
  var dato, par, impar : Integer;
begin
  par := 0;
  impar := 0;
  repeat
    Readln(dato);
    dig_pares_impares(dato, par, impar);
  until(dato = 100);
  Writeln('Pares:', par, 'Impares:', impar);
end.

{
  a) ¿que imprime si se lee la siguente secuencia de valores? 250 35 100
  a) Imprime Pares: 4 Impares: 14
}