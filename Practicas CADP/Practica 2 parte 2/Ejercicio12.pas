Program Ejercicio12;
  type Zona=1..3;
  function ingresar_Datos(
    var hectariasF : Integer;
    var Tipo_ZonaF : Zona;
    var Precio_ToneladaF : Real
    );
  begin
    Writeln('Ingrese Hectarias: ');
    Readln(hectariasF);
    Writeln('Ingrese tipo de zona:');
    Writeln('1: Zona muy fertil');
    Writeln('2: Zona estandar');
    Writeln('3: Zona arida');
    Readln(Tipo_ZonaF);
    Writeln('Ingrece Precio por tonelada: ');
    Readln(Precio_ToneladaF);
  end;
  function Rendimiento_Economico(
    var hectariasR : Integer;
    var Tipo_ZonaR : Zona;
    var Precio_ToneladaR : Real;
    RendimientoF : Real
  );
  begin
    case(Tipo_ZonaR) of
    1: RendimientoF:= 6 * hectariasR * Precio_ToneladaR;
    2: RendimientoF:= 2.6 * hectariasR * Precio_ToneladaR;
    3: RendimientoF:= 1.4 * hectariasR * Precio_ToneladaR;
    else
      Writeln('Su opcion es invalida');
    end;
    Writeln('El rendimiento economico es: ', RendimientoF:6:2,'$');
  end;
var
  Hectarias : Integer;
  Tipo_Zona : Zona;
  Precio_Tonelada : Real;
  Rendimiento : Real;
begin
  Rendimiento := 0;
  ingresar_Datos(
    Hectarias,
    Tipo_Zona,
    Precio_Tonelada
  );
  Rendimiento_Economico(
    Hectarias,
    Tipo_Zona,
    Precio_Tonelada,
    Rendimiento
  );
end.

Program Ejercicio12b;
  type
    zona = 1..4;
    cadena20 = String[20];
  function ingresar_Datos(var LocalidadF:cadena20;var hectariasF:Integer;var Tipo_ZonaF:zona);
  begin
    Writeln('Ingrece Localidad del campo: ');
    ReadLn(LocalidadF);
    Writeln('Ingrese Hectarias: ');
    Readln(hectariasF);
    Writeln('Ingrese tipo de zona:');
    Writeln('1: Zona muy fertil');
    Writeln('2: Zona estandar');
    Writeln('3: Zona arida');
    ReadLn(Tipo_ZonaF);
  end;
  function Rendimiento_Economico(hectariasR:Integer;Tipo_ZonaR:zona; Precio_ToneladaR:Real; RendimientoF:Real):Real;
  begin
    case(Tipo_ZonaR) of
      1: RendimientoF:= 6 * hectariasR * Precio_ToneladaR;
      2: RendimientoF:= 2.6 * hectariasR * Precio_ToneladaR;
      3: RendimientoF:= 1.4 * hectariasR * Precio_ToneladaR;
    end;
    Rendimiento_Economico:=RendimientoF;
  end;
  function Tres_Febrero(Localidad2:cadena20;Rendimiento_oficial2:Real;var Contador_Febrero2:Integer);
  begin
    if(Localidad2='Tres de Febrero') and (Rendimiento_oficial2>10000)then
    begin
      Contador_Febrero2:=Contador_Febrero2+1;
    end;
  end;
  function Mayor_Rendimiento(Localidad2:cadena20;var Localidad_Mayor2:cadena20;Rendimiento_oficial2:Real;var Rendimiento_Mayor2:Real);
  begin
    if(Rendimiento_oficial2>Rendimiento_Mayor2)then
    begin
      Rendimiento_Mayor2:=Rendimiento_oficial2;
      Localidad_Mayor2:=Localidad2;
    end;
  end;
  function Menor_Rendimiento(Localidad2:cadena20;var Localidad_Mayor2:cadena20;Rendimiento_oficial2:Real;var Rendimiento_Mayor2:Real);
  begin
    if(Rendimiento_oficial2<Rendimiento_Mayor2)then
    begin
      Rendimiento_Mayor2:=Rendimiento_oficial2;
      Localidad_Mayor2:=Localidad2;
    end;
  end;
var
  Contar_Rendimiento,
  Hectarias,
  Contador_Febrero : Integer;
  Tipo_Zona : Zona;
  Sumas_Rendimiento,
  Precio_Tonelada,
  Rendimiento,
  Rendimiento_oficial,
  Rendimiento_Mayor,
  Rendimiento_Menor : Real;
  Localidad:cadena20;
  Localidad_Mayor:cadena20;
  Localidad_Menor:cadena20;
begin
  Rendimiento := 0;
  Contar_Rendimiento := 0;
  Precio_Tonelada := 320;
  Contador_Febrero := 0;
  Rendimiento_Mayor := -1;
  Rendimiento_Menor := 9999;
  Sumas_Rendimiento := 0;
    repeat
      ingresar_Datos(Localidad,Hectarias,Tipo_Zona);
      Rendimiento_oficial := Rendimiento_Economico(
        Hectarias,
        Tipo_Zona,
        Precio_Tonelada,
        Rendimiento
      );
      Writeln(Rendimiento_oficial:10:2);
      Tres_Febrero(
        Localidad,
        Rendimiento_oficial,
        Contador_Febrero
      );
      Mayor_Rendimiento(
        Localidad,
        Localidad_Mayor,
        Rendimiento_oficial,
        Rendimiento_Mayor
      );
      Menor_Rendimiento(
        Localidad,
        Localidad_Menor,
        Rendimiento_oficial,
        Rendimiento_Menor
      );
      Contar_Rendimiento := Contar_Rendimiento + 1;
      Sumas_Rendimiento := Sumas_Rendimiento + Rendimiento_oficial;
    until ((Hectarias = 900) and (localidad = 'Saladillo'));
    writeln('La cantidad de campos de la localidad de Tres de Febrero con un rendimiento estimado superior a U$S 10.000 es:',Contador_Febrero);
    writeln('La localidad con mayor rendimiento es: ', Localidad_Mayor);
    writeln('La localidad con menor rendimiento es: ', Localidad_Menor);
    writeln('El promedio total de los rendimientos es: ', Sumas_Rendimiento/Contar_Rendimiento);
end.