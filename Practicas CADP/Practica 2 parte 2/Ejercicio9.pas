Program Ejercicio9;
  function Inscripcion_Par( numerosF:LongInt;var Numeros_Paresf:Integer);
  begin
    if((numerosF mod 2 )=0) then
    begin
      Numeros_Paresf:=Numeros_Paresf+1;
    end;
  end;
  function Inscripcion_Chico(
      numero_inscripcion2:Integer;
      var Numero_Mas_Bajo2:Integer;
      var Numero_Segundo_MasBajo2:Integer;
      nombre2:String;
      var Nombre_Mas_Bajo2:String;
      var Nombre_SegundoMas_Bajo2:String
    );
  begin
    if (numero_inscripcion2 < Numero_Mas_Bajo2)then
    begin
      Numero_Segundo_MasBajo2 := Numero_Mas_Bajo2;   
      Numero_Mas_Bajo2 := numero_inscripcion2;
      Nombre_SegundoMas_Bajo2 := Nombre_Mas_Bajo2;
      Nombre_Mas_Bajo2 := nombre2;
    end
    else
      begin 
        if(numero_inscripcion2<Numero_Segundo_MasBajo2) then
          begin
            Numero_Segundo_MasBajo2:=numero_inscripcion2;
            Nombre_SegundoMas_Bajo2:=nombre2;
          end
      end;
  end;
  function Inscripcion_MasGrande(
      numero_inscripcion2:Integer;
      var Numero_Mas_Bajo2:Integer;
      var Numero_Segundo_MasBajo2:Integer;
      nombre2:String;
      var Nombre_Mas_Bajo2:String;
      var Nombre_SegundoMas_Bajo2:String
    );
  begin
    if (numero_inscripcion2>Numero_Mas_Bajo2)then
    begin
      Numero_Segundo_MasBajo2:=Numero_Mas_Bajo2;   
      Numero_Mas_Bajo2:=numero_inscripcion2;
      Nombre_SegundoMas_Bajo2:=Nombre_Mas_Bajo2;
      Nombre_Mas_Bajo2:=nombre2;
    end
    else
    begin 
      if(numero_inscripcion2>Numero_Segundo_MasBajo2) then
        begin
          Numero_Segundo_MasBajo2:=numero_inscripcion2;
          Nombre_SegundoMas_Bajo2:=nombre2;
        end
      end;
  end;
 var 
  numero_inscripcion:LongInt;
  Numeros_Pares:Integer;
  Cantidad_Alumnos:Integer;
  Numero_Mas_Bajo:Integer;
  Numero_Segundo_MasBajo:Integer;
  Numero_Mas_Alto:Integer;
  Numero_Segundo_MasAlto:Integer;
  porcentaje:Real;
  nombre:String;
  Nombre_Mas_Bajo:String;
  Nombre_SegundoMas_Bajo:String;
  Nombre_Mas_Alto:String;
  Nombre_SegundoMas_Alto:String;
begin
  Cantidad_Alumnos := 0;
  Numeros_Pares := 0;
  porcentaje := 0;
  Numero_Mas_Bajo := 9999;
  Numero_Segundo_MasBajo := 9999;
  Numero_Mas_Alto := -1;
  Numero_Segundo_MasAlto := -1;
  repeat
    Cantidad_Alumnos:=Cantidad_Alumnos+1;
    Readln(numero_inscripcion);
    Readln(nombre);
    Inscripcion_Chico(numero_inscripcion,Numero_Mas_Bajo,Numero_Segundo_MasBajo,nombre,Nombre_Mas_Bajo,Nombre_SegundoMas_Bajo);
    Inscripcion_MasGrande(numero_inscripcion,Numero_Mas_Alto,Numero_Segundo_MasAlto,nombre,Nombre_Mas_Alto,Nombre_SegundoMas_Alto);
    Inscripcion_Par(numero_inscripcion,Numeros_Pares);
  end;
  until (numero_inscripcion = 1200);
  porcentaje := (Numeros_Pares / Cantidad_Alumnos) * 100;
  Writeln('La cantidad de alumnos es: ', Cantidad_Alumnos);
  Writeln('La cantidad de alumnos pares es: ', Numeros_Pares);
  Writeln('El porcentaje de los alumnos pares es: ', porcentaje:2:2);
  Writeln('El nombre con nro de inscripccion mas bajo es: ', Nombre_Mas_Bajo);
  Writeln('El segundo nombre con nro de inscripccion mas bajo es: ', Nombre_SegundoMas_Bajo);
  Writeln('Nombre del alumno con nro de inscripcion mas alto es: ', Nombre_Mas_Alto);
  Writeln('El segundo nombre con nro de inscripccion mas alto es: ', Nombre_SegundoMas_Alto);
end.