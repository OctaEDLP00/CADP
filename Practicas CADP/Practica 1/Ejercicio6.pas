Program Ejercicio6;
var 
  legajo, promedio, nota: Real;
  alumnos, aprobados, destacados: Integer;
begin
  legajo:=0;
  promedio:=0;
  nota:=0;
  alumnos:=0;
  aprobados:=0;
  destacados:=0;

  while (legajos<>-1) do 
    begin 
      Writeln('Ingrese el legajo: ');
      Readln(legajo);
      alumnos:= alumnos + 1;
      Writeln(''Ingrese Nota: );
      if (nota > 6.5) then 
        aprobados:= aprobados + 1
      if (nota > 8.5) then 
        destacados:= destacados + 1;  
    end;
    promedio:=(alumnos/100)*destacados;
    Writeln('La cantidad de alumnos leida es de: ', alumnos);
    Writeln('Los alumnos aprobados son: ', aprobados);
    Writeln('El Promedio de los que tiene mas de 8.5 es de:', destacados);
end.