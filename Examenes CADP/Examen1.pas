Program PanaderiaTema2;
const 
  cant_category = 20
type
  productos = record
    nombre: str20;
    precio_x_kilo: real;
  end;
  str20 = String[20];
  rangeCategory = 1..cant_category;
  vector_contador = Array[rangeCategory] of integer;
  vector_category = Array[rangeCategory] of producto;
  compra = record
    DNI: integer;
    prod: rangeCategory;
    kilos_comprados: real;
  end;
  lista = ^nodo;
  nodo = record
    dato: compra;
    sig: lista;
  end;

  procedure leer_compra(var compra_f: compra);
  begin
    writeln('Ingrese el DNI del cliente: ');
    readln(compra_f.DNI);
    writeln('Ingrese la categoria del producto: ');
    readln(compra_f.prod);
    writeln('Ingrese ela cantidad de kg que desea comprar: ');
    readln(compra_f.kilos_comprados);
  end;

  procedure armar_lista(var lista_f: lista; compra_f: compra);
    var aux:lista;
  begin 
    new(aux);
    aux^.dato:=compra_f;
    aux^.sig:=lista_f;
    lista_f:=aux;
  end;

  procedure cargar_lista(var lista_f : lista);
    var compra_f : compra;
  begin 
    leer_compra(compra_f);
    while(compraF.DNI<>-1) do begin
      armar_lista(lista_f,compra_f);
      leer_compra(compraF);
    end;
  end;

  function menor_gasto(var compra_f: compra; vec_categorias: vector_category; min_gasto: real) : boolean;
  begin 
    menor_gasto := compra_f.cant_kg*vec_categorias[compra_f.prod].kilos_comprados < compra_f.min_gasto;
  end;

  procedure menor_comprador(var min_kg,min_gasto : real; var min_DNI : integer; compraF : compra; vec_categorias : vector_category);
  begin 
    if (menor_gasto(compra_f, vec_categorias, min_gasto)) then begin
      min_gasto:= compra_f.cant_kg*vec_categorias[compra_f.categoria_producto].precio_x_kilo;
      min_DNI:=compra_f.DNI;
    end;
  end;

  procedure armar_vector(var vec_contador: vector_contador);
    var i : integer;
  begin
    for i:=1 to rangeCategory do begin
      vec_contador[i] := 0;
    end;
  end;

  procedure cargar_compras(var vec_contador: vector_contador; compra_f: compra);
  begin 
    vec_contador[compra_f.prod]:=vec_contador[compra_f.prod] + 1;
  end;

  procedure dni_impares(var cantComprasImpares: integer; compra_f:compra);
    var dig, impar, num: integer;
  begin 
    impar:=0;
    num:=compra_f.DNI;
    while((num <> 0) and (impar <> 5)) do begin
      dig := num MOD 10;
      if((dig MOD 2) <> 0) then begin
        impar:=impar + 1;
      end;
      num := num DIV 10;
    end;
    if (impar >= 5) then cantComprasImpares := cantComprasImpares + 1;
  end;

  procedure recorrer_lista(lista_f : lista; vec_categorias : vec_category);
    var 
    i, min_DNI, cantComprasImpares : integer;
    act, sig : lista;
    min_gasto, min_kg : real;
  begin 
    min_gasto:=9999;
    min_kg:=9999;
    cantComprasImpares:=0;
    ant:=lista_f;
    act:=lista_f;
    while (act<>nil) do begin
      menor_comprador(act^.dato,vec_categorias,min_kg,min_gasto,min_dni);
      cargar_Compras(vec_contador,act^.dato);
      dni_impares(cantComprasImpares,act^.dato);
      ant:=act;
      act:=act^.sig;
    end;
    writeln('El cliente que menos dinero gastó fue: ',min_dni);
    for i:=1 to rangoCategorias do begin
      writeln('La categoría', i,'tuvo una cantidad de compras de: ',vec_contador[i]);
    end;
    writeln('La cantidad de compras hechas por clientes con un DNI con al menos 5 digitos impares fueron: ',CantComprasImpares);
  end;
  var  
    listaF:lista;
    vec_categorias:vector_categorias;
    vec_contador:vector_contador;
BEGIN
  listaF:=nil;
  cargarLista(listaF);
  // SE DISPONE
  cargarVectorCategorias(vec_categorias);
  armarVector(vec_cont);
  recorrerLista(listaF,vec_categorias,vec_contador);
END;