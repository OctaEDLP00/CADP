Program Ejercicio5;
  type
    str20 = string[20];
    range = 1..100;
    vector_camion = array[range] of camion;
    camion = record 
      patente: integer;
      ano_frabricacion: integer;
      capacidad: integer;
    end;
    viajes = record
      codigo_camion:vector_camion;
      codigo_viaje: integer;
      ciudad_destino: str20;
      km: real;
      ano_viaje: integer;
      dni_chofer: integer;
    end;
    lista=^nodo;
    nodo = record
      dato: viajes;
      sig: lista;
    end;
  function leer_viaje(var viajes: viajes);
  begin
    Writeln('Ingrese el codigo del viaje: ');
    Readln(viajes.codigo_viaje);
    Writeln('Ingrese el codigo del camion que realizo el viaje: ');
    Readln(viajes.codigo_camion);
    Writeln('Ingrese la distancia en km que recorrio durante su viaje: ');
    Readln(viajes.km);
    Writeln('Ingrese el nombre de la ciudad de destino: ');
    Readln(viajes.ciudad_destino);
    Writeln('Ingrese el año en el que se realizo el viaje: ');
    Readln(viajes.ano_viaje);
    Writeln('Ingrese el DNI del chofer: ');
    Readln(viajes.dni_chofer);
  end;
  function armar_lista(var lista_viajes: lista; viaje:viajes);
  var
    nuevo: lista;
  begin
    new(nuevo);
    nuevo^.dato:=viaje;
    nuevo^.sig:=lista_viajes;
    lista_viajes:=nuevo;
  end;
  function cargar_lista(var lista_viaje: lista);
    var viaje: viajes;
  begin
    leer_viaje(viaje);
    while (viaje.codigo_viaje<>-1) do begin 
      armar_lista(lista_viaje,viaje);
      leer_viaje(viaje);
    end;
  end;
  function max_min(
    viaje:viajes; 
    var max_kn,min_kn:real;
    var patente_max,patente_min:integer;
    vector_camiones:vector_camion;
  );
  begin
    if (viaje.km>max_kn) then begin
      max_kn:=viaje.km;
      patente_max:=viaje.codigo_camion;
      writeln('El camion con la patente ',patente_max,' tiene el mayor kilometraje: ',max_kn);
    end;
    if (viaje.km<min_kn) then begin
      min_kn:=viaje.km;
      patente_min:=viaje.codigo_camion;
      writeln('El camion con la patente ',patente_min,' tiene el menor kilometraje: ',min_kn);
    end;
  end;
  function cant_viajes(V: vector_camion; var cant_viajes: integer);
    var i: integer;
  begin
    for i:= 1 to 100 do begin 
      if (V[i].capacidad < 30.5) AND (V[i].ano_frabricacion > 5) then begin
        cant_viajes:=cant_viajes + 1;
      end;
    end;
  end;
  function dni_impares(viaje: viajes; var cant_impares: integer);
    var dig : integer;
  begin 
    while (viaje.dni_chofer <> 0) do begin
      dig:=viaje.dni_chofer MOD 10;
      if (NOT(dig MOD 2) = 0) then begin
        cant_viajes:=cant_viajes + 1;
      end;
    end;
  end;
  function recorrer_lista(lista_viajes: lista, vector_camiones: vector_camion);
    var patente_max, patente_min: integer;
    max_kn, min_kn: real;
    cont_viajes: integer;
  begin
    max_kn := -1;
    min_kn := 9999;
    patente_max := -1;
    patente_min := 9999;
    cont_viajes := 0;
    while (lista_viajes <> nil) do begin
      max_min(lista_viajes^.dato, max_kn, min_kn, patente_max, patente_min, vector_camiones);
      cant_viajes(vector_camiones, cont_viajes);
      dni_impares(lista_viajes^.dato, cont_viajes);
      lista_viajes:=lista_viajes^.sig;
    end;
  var 
    ListaV: lista;
    vector_camiones:vector_camion;
BEGIN
  ListaV:=nil;
  cargar_lista(ListaV);
  recorrer_lista(ListaV, vector_camiones);
END.