Program Ejercicio2;
type
  dias = 1..30;
  meses = 1..12;
  fecha = record
    dia: dias;
    mes: meses;
    anio: integer;
  end;
  function leer(var casamiento: fecha);
  begin
    Writeln('Ingrese el dia: ');
    Readln(casamiento.dia);
    Writeln('Ingrese el mes: ');
    Readln(casamiento.mes);
    Writeln('Ingrese el anio: ');
    Readln(casamiento.anio);
  end;
  function casamientos_por_anios(
    var cant_casamiento : integer;
    fecha_casamiento : fecha
  );
  var anio2019 : integer;
  begin
    anio2019 := 2019;
    if (fecha_casamiento.anio = anio2019) then
      cant_casamiento := cant_casamiento + 1; 
  end;
var a : fecha;
begin
  leer(a);
end.