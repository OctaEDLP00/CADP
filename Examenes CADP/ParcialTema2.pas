program parcial_tema2;
const
  rangoCategorias = 20
type
  str20 = string [20]
  categoria = record
    nombre:str20;
    precio_kg:real;
  end;
  vector_contador = array [1..rangoCategorias] of integer;
  vector_categorias = array  [1..rangoCategorias] of categorias;
  compra = record
    dni_cliente:integer;
    categoria_producto:[1..rangoCategorias];
    cant_kg:real;
  end;
  lista = ^nodo;
  nodo = record
    dato:compra;
    sig:lista;
  end;
// A
procedure leerCompra(var compraF:compra);
begin
  writeln('Ingrese el dni del cliente');
  readln(compraF.dni_cliente);
  writeln('Ingrese la categoria del producto');
  readln(compraF.categoria_producto);
  writeln('Ingrese la cantidad de kg que desea comprar');
  readln(compraF.cant_kg);
end;
//
procedure armarLista(var listaF:lista;compraF:compra);
var
  aux:lista;
begin
  new(aux);
  aux^.dato:=compraF;
  aux^.sig:=listaF;
  listaF:=aux;
end;
//  
procedure cargarLista (var listaF:lista);
var
  compraF:compra;
begin
  leerCompra(compraF);
  while(compraF.dni_cliente<>-1) do begin
    armarLista(listaF,compraF);
    leerCompra(compraF);
  end;
end;
// B inciso 1
function menor_gasto(compraF:compra;vec_categorias:vector_categorias; min_gasto:real):boolean;
begin
  menor_gasto:=compraF.cant_kg*vec_categorias[compraF.categoria_producto].precio_kg<min_gasto;
end;
//
procedure menor_comprador(compraF:compra;vec_categorias:vector_categorias;var min_kg,min_gasto:real;var min_dni);
begin
  if (menor_gasto(compraF,vec_categorias,min_gasto)) then begin
    min_kg:=compraF.cant_kg;//No es necesario, no nos ayuda en nada durante el programa.
    min_gasto:=(compraF.cant_kg*vec_categorias[compraF.categoria_producto].precio_kg);
    min_dni:=compraF.dni_cliente;
  end;
end;
// B inciso 2
procedure armarVector(var vec_contador:vector_contador);
var
  i : integer;
begin
   for i:=1 to rangoCategorias do begin
     vec_contador[i]:=0;
   end;
end;
//
procedure cargarCompras(var vec_contador:vector_contador;compraF:compra);
begin
  vec_contador[compraF.categoria_producto]:=vec_contador[compraF.categoria_producto]+1;
end;
// B inciso 3
procedure dni_impares(var cantComprasImpares:integer;compraF:compra);
var
  dig:integer;
  impar:integer;
  num:integer;
begin
  impar:=0;
  num:=compraF.dni_cliente;
  while(num<>0) and (impar<>5) do begin
    dig:=num MOD 10;
    if((dig mod 2)<>0) then begin
      impar:=impar+1;
    end;
    num:=num DIV 10;
  end;
  if(impar>=5)then
   cantComprasImpares:=cantComprasImpares+1;
end;
// Modulo B
procedure recorrerLista(listaF:lista,vec_categorias,vec_contador);
var
  i:integer;
  ant:lista;
  act:lista;
  min_gasto:real;
  min_kg:real;
  min_dni:integer;
  cantComprasImpares:integer;
begin
  min_gasto:=9999;
  min_kg:=9999;
  cantComprasImpares:=0;
  ant:=listaF;
  act:=listaF;
  while(act<>nil) do begin
    menor_comprador(act^.dato,vec_categorias,min_kg,min_gasto,min_dni);
    cargarCompras(vec_contador,act^.dato);
    dni_impares(cantComprasImpares,act^.dato);
    ant:=act;
    act:=act^.sig;
  end;
  writeln('El cliente que menos dinero gastó fue:',min_dni);
  for i:=1 to rangoCategorias do begin
    writeln('La categoría', i,'tuvo una cantidad de compras de:',vec_contador[i];
  end;
  writeln('La cantidad de compras hechas por clientes con un DNI con al menos 5 digitos impares fueron:',CantComprasImpares);
end;
// Programa principal
var
  listaF:lista;
  vec_categorias:vector_categorias;
  vec_contador:vector_contador;
begin
  listaF:=nil;
  cargarLista(listaF);
  cargarVectorCategorias(vec_categorias);// SE DISPONE
  armarVector(vec_cont);
  recorrerLista(listaF,vec_categorias,vec_contador);
end;