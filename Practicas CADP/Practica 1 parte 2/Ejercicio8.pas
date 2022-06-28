Program Ejercicio8;
  type
    dias = 0..31;
  var
    i : dias;
    monto : Integer;
    cant_dia : Integer;
    cant_mes : Integer;
  begin
    cant_mes := 0;
    cant_dia := 0;
    monto := 0;
    i := 0;
    for i to 31 do
    begin
      Writeln('Dia: ', i);
      Writeln('Ingrese el monto: ');
      Readln(monto);
      while (monto <> 0) do
      begin
        cant_dia := cant_dia + 1;
        Writeln('ingrese el monto: ');
        Readln(monto);
      end;
      Writeln('La cantidad de ventas del dia: ', d ,' es de: ', cant_dia);
      cant_mes := cant_mes + cant_dia;
    end;
    Writeln('La cantidad del mes es: ', cant_mes);
end.