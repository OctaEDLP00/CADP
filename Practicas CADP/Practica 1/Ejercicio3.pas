Program Ejercicio3;
  var num1, num2, num3: Integer;
begin
  Writeln('Ingrese 3 numeros enteros');
  Readln(num1);
  Readln(num2);
  Readln(num3);
  if (num1 > num2) and (num1 > num3) then
  begin
    Writeln(num1);
    if (num2 > num3) then
    begin
      Writeln(num2);
      Writeln(num3);
    end
    else
    begin
      Writeln(num3);
      Writeln(num2);
    end;
  end
  else
    begin
      if (num2 > num3) then
        begin
          Writeln(num2);
          if (num1 > num3) then
            begin
              Writeln(num1);
              Writeln(num3);
            end
          else
            begin
              Writeln(num3);
              Writeln(num1);
            end;
        end;
      else
      begin
        Writeln(num3);
        if (num1 > num2) then
          begin
            Writeln(num1);
            Writeln(num2);
          end
        else
          begin
            Writeln(num2);
            Writeln(num1);
        end;
      end;
    end;
end.