program ejercicio2;
type
  str20=string[20];
  cliente=record
  dni:integer;
  codigo:integer;
  apellido:str20;
  nombre:str20;
  poliza:integer;
  monto_mes:real;
  end;
  lista=^nodo;
  nodo=record
    dato:cliente;
    sig:lista;
  end;
procedure leerCliente(var clienteF:cliente);
begin
  writeln('Ingrese el dni del cliente');
  readln(clienteF.dni);
  writeln('Ingrese el codigo de cliente');
  readln(clienteF.codigo);
  writeln('Ingrese su apellido y luego su nombre')
  readln(clienteF.apellido);
  readln(clienteF.nombre);
  writeln('Ingrese el tipo de poliza del cliente "del 1 al 6"');
  readln(clienteF.poliza);
  writeln('Ingrese el monto basico que paga el cliente mensualmente');
  readln(clienteF.monto_mes);
end;
procedure armarLista(var listaF:lista;clienteF:cliente);
var
  aux:listaF;
begin
  new(aux);
  aux^.dato:=clienteF;
  aux^.sig:=listaF;
  listaF:=aux;
end;
procedure monto_completo_mes (var listaF:lista);
var
  suma:real;
  extra_mensual:real;
begin
  suma:=0;
  writeln('El tipo de poliza del cliente es:', listaF^.dato.poliza);
  writeln('Ingrese la cantidad de dinero extra que debe pagar el cliente segun su poliza');
  readln(extra_mensual);
  suma:=extra_mensual+listaF^.dato.monto_mes);
  listaF^.dato.monto_mes:=suma;
  suma:=0;
end;
procedure cargarLista(var listaF:lista);
var
  clienteF:cliente;
begin
  leerCliente(clienteF);
  repeat
    armarLista(listaF,clienteF);
    monto_completo_mes(listaF);
    leerCiente(clienteF);
  until(clienteF.codigo=1122);
end;
procedure informarLista(listaF:lista);
var
  aux:listaF;
begin
  aux:=ListaF;
  while (aux<>nil) do begin
    writeln('El DNI del cliente es',aux^.dato.dni);
    writeln('El apellido del cliente es',aux^.dato.apellido);
    writle('El nombre del cliente es', aux^.dato.nombre);
    writle('El monto a pagar es', aux^.dato.monto_mes);
    aux:=aux^.sig;
  end;
end;
procedure digito9(listaF:lista);
var
  cantDig9:integer;
  dig:integer;
begin
  cantDig9:=0;
  while(listaF^.dato.dni<>0) do begin
    dig:=(listaF^.dato.dni mod 10);
    if(dig=9) then begin
    cantDig9:=cantDig9+1;
    end;
  end;
  if (cantDig9>=2) then begin
    writeln ('El apellido del cliente que cumple la condición es:', listaF^.dato.apellido);
    writeln ('El nombre del cliente que cumple la condición es:', listaF^.dato.nombre);
    dig:= dig div 10;
  else
    dig:=dig div 10;
  end;
    cantDig9:=0;
end;
procedure eliminarCliente(var listaF:lista;codigo:integer);
var
  exito:boolean;
  ant:listaF;
  act:listaF;
begin
  exito:=false;
  act:=listaF;
  while(act<>nil) and (act^.dato.codigo<>codigo) do begin
    ant:=act;
    act:=act^.sig;
  end;
  if (act<>nil) then begin
    exito:=true;
    if(act=listaF) then begin
      listaF:=act^.sig;
    else
      ant^.sig:=act^.sig;
    end;
    dispose(act);
    if (exito=true) then begin
     writeln ('El cliente fue eliminado correctamente del sistema');
    end;
  end;
end;
var
  listaF:lista;
  codigo:integer;
begin
  listaF:=nil;
  cargarLista(listaF);
  digito9(listaF);
  writeln('Ingrese el codigo del cliente que desea eliminar');
  readln(codigo);
  eliminarCliente(listaF,codigo);
end;