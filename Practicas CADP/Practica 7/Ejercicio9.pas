Program Ejercicio9;
  type 
    str20 = string[20];
    peliculas = record
     codigo : integer;
     titulo : str20;
     codigo_genero: integer;
     promedio: real;
    end;
    critica = record
      dni_critico : integer;
      apellido_critico : str20;
      nombre_critico : str20;
      codigo_pelicula : integer;
      puntaje_promedio : real;
    end;
    lista:^nodo;
    nodo = record
      dato : critica;
      sig : lista;
    end;
    range= 1..8;
    vector_contador = array[range] of integer;
  function leer_critica(var criticaf : critica);
  begin 
    writeln('Ingrese el dni del critico: ');
    readln(criticof.dni_critico);
    writeln('Ingrese el apellido del critico: ');
    readln(criticof.apellido_critico);
    writeln('Ingrese el nombre del critico: ');
    readln(criticof.nombre_critico);
    writeln('Ingrese el codigo de la pelicula: ');
    readln(criticof.codigo_pelicula);
    writeln('Ingrese el puntaje promedio del critico: ');
    readln(criticof.puntaje_promedio);
  end;
  function armar_lista(var listaf: lista; criticaf: critica);
    var aux: lista;
  begin 
    new(aux)
    aux^.dato := criticaf;
    aux^.sig := listaf;
    listaf := aux;
  end;
  function cambiar_lista(
    var lista_disponible : lista
    critica_f : critica
  );
  var nue, act, ant: lista_disponible;
  begin 
    new(nue);
    nue^.dato := critica_f;
    ant := lista_disponible;
    act := lista_disponible;
    while ((act<>nil) AND (nue^.dato.codigo_pelicula<>act^.dato.codigo_pelicula)) do begin
      ant := act;
      act := act^.sig;
    end;
    if ((ant<>act) AND (act^.dato.codigo_pelicula = act^.dato.codigo_pelicula)) then begin
      lista_disponible^.dato.promedio := nue^.dato.puntaje_promedio;
    end;
  end;
  function cargar_lista(var lista_f: lista);
    var critica_f : critica;
  begin 
    leer_critica(critica_f)
    while critica_f.codigo_pelicula <> -1 do begin 
      armar_lista(lista_f, critica_f);
      cambiar_lista(lista_f, critica_f)
      leer_critica(critica_f);
    end;
  end;
  function armar_vector(var vector_f: vector_contador);
    var i :integer;
  begin 
    for i := 1 to 8 do begin 
      vector_f[i] := 0;
    end;
  end;
  function cargar_vector(
    var vector_f: vector_contador; 
    lista_disponible: lista
  );
  var i : Integer;
  begin 
    while (lista_disponible <> nil) do begin
      for i:= 1 to 8 do begin 
        if (lista_disponible^.dato.codigo_genero= i) then begin 
          vector_f[i] := vector_f[i]+1;
        end;
      end;
      lista_disponible:=lista_disponible^.sig;
    end;
  end;
  function  genero_fav(
    vector_f: vector_contador; 
    var max_votos: integer; 
    var codigo_fav: integer
  );
  var i : integer;
  begin 
    for i:= 1 to 8 do begin 
      if (vector_f[i] > max_votos) then begin 
        max_votos := vector_f[i];
        codigo_fav := i;
      end;
    end;
  end;
  function criticos_parimpar(lista_f:lista);
  var par,impar,dig: integer;
  aux:lista;
  begin 
    aux:=lista_f;
    par := 0;
    impar := 0;
    while (aux <> nil) do begin
      while (aux^.dato.dni_critico <> 0) do begin 
        dig := aux^.dato.dni_critico mod 10;
        if ((dig mod 2) = 0) then begin 
          par := par + 1;
        end else begin 
          impar := impar + 1;
        end;
        aux^dato.dni_critico:=lista_f^.dato.dni_critico;
      end;
      if (impar=par) then begin 
        writeln(aux^dato.apellido_critico,', ',aux^dato.nombre_critico,': ',par,' criticos');
      end else begin 
        writeln('El critico no cumple con los requisitos');
        par:=0;
        impar:=0;
      end
      aux := aux^sig
    end;
  end;
  function eliminar_pelicula(
    var lista_disponible : lista;
    codigo_pelicula: integer
  );
    var 
      exito:boolean;
      ant,act:lista;
  begin 
    exito:=false;
    act:=lista_disponible;
    while ((act<>nil) AND (act^.dato.codigo_pelicula<>codigo_pelicula)) do begin
      ant:=act;
      act:=act^.sig;
    end;
    if (ant<>nil) then begin
      exito:=true;
      if (act=lista_f) then begin 
        lista_disponible := act^.sig
      else 
        ant^,sig:=act^.sig;
      end;
      dispose(act);
      if (exito=true) then begin 
        writeln('La pelicula fue eliminada correctamente');
      else
        writeln('la peliucula no existe en el sistema');
      end;
    end;
  end;
  function recorrer_lista(lista_disponible:lista);
    var
      vector_f:vector_contador;
      max_votos:integer;
      codigo_fav:integer;
  begin 
    max_votos:=-1;
    codigo_fav:=0;
    armar_vector(vector_f);
    cargar_vector(vector_f,lista_disponible);
    while(lista_disponible<>nil) do begin
      genero_fav(vector_f,max_votos,codigo_fav);
      listaDisponible:=listaDisponible^.sig;
    end;
    writeln('La categoria con mas votos fue:',codigo_favorito);
  end;
  var
    listaF:lista;
    listaDisponible:lista;
    codigo_pelicula:integer;
begin
  listaF:=nil;
  //writeln('Aca se ingresaría la lista que dispone el cine');
  cargarLista(listaF);
  criticos_par_impar(listaF);
  recorrerLista(listaDisponible);
  writeln('Ingrese el codigo de la pelicula que desea eliminar del sistema');
  readln(codigo_pelicula);
  eliminarPelicula(listaDisponible,codigo_pelicula);
end.