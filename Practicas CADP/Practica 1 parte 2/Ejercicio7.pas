Program Ejercicio7;
var
  i:Integer;
  ultimo, anteultimo: String;
  primero, segundo: String;
  piloto: String;
  tiempo_carrera: Real;
  mejor_total1, mejor_total2: Real;
  ultimo_tiempo1, ultimo_tiempo2: Real;
begin
  i:= 1;
  mejor_total1:=10000000;
  mejor_total2:=10000000;
  ultimo_tiempo1:=-1;
  ultimo_tiempo2:=-1;
  primero:='';
  segundo:='';
  ultimo:='';
  anteultimo:='';
  for i to 5 do
  begin
    Writeln('Ingrese el nombre del piloto');
    Readln(piloto);
    Writeln('Ingrese el tiempo total de la en que finalizo la carrera');
    Readln(tiempo_carrera);
    Writeln('===========================================');
    // =============================================================
    if (tiempo_carrera < mejor_total1) then
    begin
      mejor_total2 := mejor_total1;
      segundo := primero;
      mejor_total1 := tiempo_carrera;
      primero := piloto;
    else 
      if (tiempo_carrera < mejor_total2) then
      begin
        mejor_total2 := tiempo_carrera;
        segundo := piloto;
      end;
    end;
    // =============================================================
    if (tiempo_carrera < ultimo_tiempo1) then 
    begin
      ultimo_tiempo2 := ultimo_tiempo1;
      anteultimo := ultimo;
      ultimo_tiempo1 := tiempo_carrera;
      ultimo := piloto;
    else
      if (tiempo_carrera > ultimo_tiempo2) then
      begin
        ultimo_tiempo2 := tiempo_carrera;
        anteultimo := piloto;
      end;
    end;
  end;
end.