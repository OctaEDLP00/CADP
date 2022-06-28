program ejercicio3;
type
   str20=string[20];
   viaje=record
   numero_viaje:integer;
   codigo_auto:integer;
   origen:str20;
   destino:str20;
   km_recorridos:integer;
   end;
   lista=^nodo;
   nodo=record
    dato:viaje;
    sig:lista;
   end;
procedure MaxKM2(listaF:lista;var Max1,Max2:integer;var Cmax1,Cmax2:integer);
begin
  if(listaF^.dato.km_reccorridos>Max1) then begin
    Max2:=Max1;
    Cmax2:=Cmax1;
    Max1:=listaF^.dato.km_reccorridos;
    Cmax1:=listaF^.dato.codigo_auto;
  end;
  if(listaF^.dato.km_reccorridos>Max2) then begin
    Max2:=listaF^.dato.km_reccorridos;
    Cmax2:=listaF^.dato.codigo_auto;
  end;
end;
procedure AgregarOrdenado (var listaN:lista; valor:viaje);
var
  nuevo:lista;
  ant:lista;
  act:lista;
begin
  new(nuevo);
  nuevo^.dato:=valor;
  ant:=listaN;
  act:=listaN;
  while(act<>nil)and(valor.km_recorridos>act^.dato.km_recorridos) do begin
    ant:=act;
    act:=act^.sig;
  end;
  if(act=ant)then begin
    ListaN:=nuevo;
  else
    ant^.sig:=nuevo;
  end;
  nuevo^.sig:=act;
end;
procedure recorrerLista (listaF:lista);
var
  codigo_act:integer;
  cant_km:integer;
  Max1:integer;
  Max2:integer;
  Cmax1:integer;
  Cmax2:integer;
  listaN:lista;
 begin
   ListaN:=nil;
   Cmax1:=-1;
   Cmax2:=-1;
   Max2:=-1;
   Max1:=-1;
   while(listaF<>nil) do begin
     cant_km:=0;
     codigo_act:=listaF^.datos.codigo_auto;
     while(listaF<>nil) and (codigo_act=listaF^.datos.codigo_auto) do begin
       if(listaF^.datos.km_recorridos>5) then begin
         AgregarOrdenado(ListaNueva,listaF^.datos);
       end;
       cant_km:=cant_km+listaF^.datos.km_recorridos;
       listaF:=listaF^.sig;
     end;
     MaxKM2(listaF,Max1,Max2,Cmax1,Cmax2);
   end;
end;
var
 listaF:lista;
begin
 listaF:=nil;
 writleln('Aca entraría la lista completa que ya tiene la remisería');
 recorrerLista(listaF);
end;