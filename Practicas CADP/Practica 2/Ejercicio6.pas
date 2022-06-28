Program Ejercicio6;
  function numero_negativo(n : Integer) : Integer;
  var
    neg,es_par,no_par : Integer;
  begin
    neg := -1;
    es_par := 0;
    no_par := 0;
    if ( NOT (n <= neg)) then
    begin
      if n mod 2 = 0 then
      begin
        Writeln(n);
        es_par := es_par + 1;
      else
        no_par := no_par + 1;
      end;
    else
      Writeln('El numero es negativo', n);
    end;
    Writeln(n);
  end;
begin
  numero_negativo(10);
  numero_negativo(3);
  numero_negativo(12);
  numero_negativo(7);
  numero_negativo(-1);
end.