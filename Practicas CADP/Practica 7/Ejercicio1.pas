Program Ejercicio1;
type
  range = 1..6;
  opc = array[range] of integer;
  actores = record 
    dni, edad: integer;
    nombre, apellido: string[20];
    codigo_genero: opc;
  end;
  lista= ^nodo;
  nodo = record
    dato: actores;
    sig: lista;
  end;
  function leer_datos(var actores_function: actores);
  begin
    writeln('Ingrese el DNI: ');
    readln(actoresf.dni);
    writeln('Ingrese el Nombre: ');
    readln(actoresf.nombre);
    writeln('Ingrese el Apellido: ');
    readln(actoresf.apellido);
    writeln('Ingrese la Edad: ');
    readln(actoresf.edad);
    writeln('Ingrese el Codigo de Genero: ');
    readln(actoresf.codigo_genero);
    case actoresf.codigo_genero of
      1: writeln('Genero: Drama');
      2: writeln('Genero: Romantico');
      3: writeln('Genero: Accion');
      4: writeln('Genero: Suspenso');
      5: writeln('Genero: Terror');
      6: writeln('Debe ingresar una opcion valida');
    end;
    {
      for i:= 1 to 6 do
      begin
        writeln('Ingrese el Codigo de Genero: ');
        readln(actoresf.codigo_genero);
        if actoresf.codigo_genero[i] = 1 then
          writeln('Genero: Drama');
        if actoresf.codigo_genero[i] = 2 then
          writeln('Genero: Romantico');
        if actoresf.codigo_genero[i] = 3 then
          writeln('Genero: Accion');
        if actoresf.codigo_genero[i] = 4 then
          writeln('Genero: Suspenso');
        if actoresf.codigo_genero[i] = 5 then
          writeln('Genero: Terror');
        if actoresf.codigo_genero[i] = 6 then
          writeln('Debe ingresar una opcion valida');
      end;
    }
  end;
  function dni_par_impar(
    actores_function: actores, 
    var pares_impares: integer
  );
  var
    par, impar, dig : integer;
  begin
    impar := 0;
    par := 0;
    while (actores_function.dni <> 0) do
    begin
      dig := actores_function.dni mod 10;
      if ((dig mod 2) = 0) then
        par := par + 1
      else
        impar := impar + 1;
      actores_function.dni:= actores_function.dni div 10;
    end;
    if (imapres < pares) then
      pares_impares := pares_impares + 1;
  end;
  function armar_nodo(
    actores_function: actores; 
    var lista_function: lista
  );
  var 
    lista_function: lista;
  begin
    new(nuevo);
    nuevo^.dato:= actores_function;
    nuevo^.sig:= lista_function;
    lista_function:= nuevo;
  end;
  function cargar_lista(var lista_function: lista);
  var
    actores_function: actores;
  begin 
    leer_datos(actores_function);
    repeat 
      armar_nodo(actores_function, lista_function);
      leer_datos(actores_function);
    until(actores_function.dni = 33444555);
  end;
  function init_vector(var vector: opc);
  var
    i: range;
  begin
    for i:= 1 to 6 do
      vector[i]:= 0;
  end;
  function cargar_vector(var vector: opc; actores_function: actores);
  begin
    vector[actores_function] := vector[actores_function] + 1;
  end;
  function generar_fav(
    vector :opc; 
    var gmax1,gmax2: integer; 
    var g_fav1, g_fav2: integer
  );
  var i : integer;
  begin 
    for i:= 1 to 5 do begin 
      if vector[i] > gmax1 then begin 
        gmax2 := gmax1; 
        g_fav2 := g_fav1; 
        gmax1 := vector[i]; 
        g_fav1 := i; 
      end else if vector[i] > gmax2 then begin 
        gmax2 := vector[i]; 
        g_fav2 := i; 
      end; 
    end;
  end;
  function mostrar_lista(listaf: lista);
    var
      gmax1,gmax2, 
      g_fav1, g_fav2, 
      pares_impares: integer;
      v : vector;
  begin 
    gmax1 := -1;
    gmax2 := -1;
    g_fav1 := 0;
    g_fav2 := 0;
    pares_impares := 0;
    init_vector(v);
    while (listaf <> nil) do begin
      dni_par_impar(listaf^.dato, pares_impares);
      cargar_vector(v, listaf^.dato);
      listaf:= listaf^.sig;
      generar_fav(pares_impares,gmax1,gmax2,g_fav1,g_fav2);
      init_vector(v);
    end;
    writleln('La cantidad de personas con un DNI con más numeros pares son: ', ContPares);
    writleln('El genero más votado es: ', GeneroFav1);
    writleln('El segundo genero más votado es: ',GeneroFav2);
  end;
BEGIN

END.