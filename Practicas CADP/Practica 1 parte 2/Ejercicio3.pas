Program Ejercicio3;
type 
  rango = 0..10;
  cadena = String[20];
var 
  aprobados,nota,siete:rango;
  dni,legajo: Integer;
  nombre: cadena;
  respuesta: char;
begin
  nota:=0;
  siete:=0;
  aprobados:=0;
  dni:=0;
  legajo:=0;
  repeat
    Writeln('Ingrese su nombre: ');
    Readln(nombre);
    Writeln('Ingrese su dni: ');
    Readln(dni);
    Writeln('Ingrese su legajo: ');
    Readln(legajo);
    Writeln('Ingrese su nota en EPA: ');
    Readln(nota);
    if nota >= 8 then
      aprobados := aprobados + 1;
    if nota = 7 then
      siete := siete + 1;
    Writeln('Desea ingresar otro alumno? (y/n)');
    read(respuesta);
    if respuesta = 'n' then
      Writeln('Alumnos aprobados con 8 o mas: ',aprobados);
      Writeln('Alumnos aprobados con 7: ', siete);
    else 
      Writeln('Siga ingresando alumnos');
  until (nombre = 'Zidane Zinedine') and (respuesta = 'n');
end.