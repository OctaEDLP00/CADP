Program Ejercicio8;
type 
  abcedario = 'a'..'z';
  contar= 0..1;
var
  letra, letra2, letra3: abcedario;
  contador:contar;
begin
  contador:=0;

  Writeln('Ingrese la primera letra: ');
  Readln(letra);
  Writeln('Ingrese la segunda letra: ');
  Readln(letra2);
  Writeln('Ingrese la tercera letra: ');
  Readln(letra3);

  if (letra='a') or (letra='e') or (letra='i') or (letra='o') or (letra='u') then contador:= contador + 1;
  if (letra2='a') or (letra2='e') or (letra2='i') or (letra2='o') or (letra2='u') then contador:= contador + 1;
  if (letra3='a') or (letra3='e') or (letra3='i') or (letra3='o') or (letra3='u') then contador:= contador + 1;

  if (contador>=1) then 
  begin 
    if (contador=3) then 
    begin
      Writeln('Los tres caracteres son vocales');
    end;
    else begin
      Writeln('Al menos un caracter es una vocal');
    end;
  end;

end.