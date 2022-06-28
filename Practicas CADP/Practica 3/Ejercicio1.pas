Program Ejercicio1;
type
  Str20 = String[20];
  alumnos = record
    codigo: Integer;
    nombre: Str20;
    promedio: Real;
  end;
  procedure leer(var alu : alumnos, var cant_alumnos : Integer);
  begin
    Writeln('Ingrese el codigo del Alumno');
    Readln(alu.codigo);
    if (alu.codigo <> 0) then
    begin
      Writeln('Ingrese el nombre del alumno: ');
      Readln(alu.nombre);
      Writeln('Ingrese el promedio del alumno: ');
      Readln(alu.promedio);
      cant_alumnos:=cant_alumnos + 1;
    end;
  end;
  procedure promedio(
    var nombre:str20;
    var promedio:real;
    var alumno_Destacado:str20;
    var promedio_mejor:real
  );
  begin
    if (promedio>promedio_mejor)then
    begin
      promedio_mejor:=promedio;
      alumno_Destacado:=nombre;
    end;
  end;
  var 
    a : alumnos;
    cant_alumnos : Integer;
    promedio_mejor : Real;
    alumno_Destacado : Str20;
begin
  cant_alumnos := 0;
  promedio_mejor := -1;
  // leer(a,cant_alumnos);
  // promedio(a.nombre,a.promedio,alumno_Destacado,promedio_mejor);
  while a.codigo<>0 do
  begin
    leer(a,cant_alumnos);
    promedio(a.nombre,a.promedio,alumno_Destacado,promedio_mejor);
  end;
  writeln('la cantidad de alumnos que se ingresaron son: ', cant_alumnos);
  writeln('el alumno con mejor promedio es: ', alumno_Destacado);
end.