Program Ejercicio11º;
  type
    str20 = String[20];
    range = 1..5;
    
    Opc = Array[range] of Integer
    eventos = record
      nombre_evt: str20;
      tipo_evt: Opc;
      lugar_evt: String;
      cant_max_personas: Integer;
      valor_entrada: Real;
      usuario: venta;
    end;
    ventas = record
      codigo_venta: Integer;
      numero_evt: Integer;
      DNI_comprador: Integer;
      cant_entrada_adquiridas: Integer;
    end;
    lista = ^nodo;
    nodo = record
      dato: eventos;
      sig: lista;
    end;
  procedure leer_evento(var evento_f: eventos);
  begin
    writeln('Ingrese el nombre del evento: ');
    readln(evento_f.nombre_evt);
    writeln('Ingrese el tipo de evento: ');
    readln(evento_f.tipo_evt);
    writeln('Ingrese el lugar del evento: ');
    readln(evento_f.lugar_evt);
    writeln('Ingrese la cantidad maxima de personas: ');
    readln(evento_f.cant_max_personas);
    writeln('Ingrese el valor de entrada: ');
    readln(evento_f.valor_entrada);
  end;
  procedure leer_ventas(var evento_f: eventos);
  begin
    writeln('Ingrese el codigo de venta: ');
    readln(evento_f.usuario.codigo_venta);
    writeln('Ingrese el numero de evento: ');
    readln(evento_f.usuario.numero_evt);
    writeln('Ingrese el DNI del comprador: ');
    readln(evento_f.usuario.DNI_comprador);
    writeln('Ingrese la cantidad de entradas adquiridas: ');
    readln(evento_f.usuario.cant_entrada_adquiridas);
  end;
  procedure armar_lista(var lista_evento: lista; evento_f: eventos);
  begin
    
  end;
  procedure cargar_lista(var lista_evento :lista);
  begin
  
  end;
  procedure cargar_lista_ventas(var lista_evento :lista);
  begin
  
  end;
  var
    name: type;
BEGIN
  
END.

{
  caret ^	
  corchetes []
  difrente <>
  igual =
  mayor >
  menor <
  mayor igual >=
  menor igual <=
  and
  or 
  not //negacion... ej if (not(x=y)) then writeln(x, 'no es igual a', y);
  suma +
  resta -
  multiplicacion *
  division (/ ó div)
  modulo %
  potencia ^
  resto mod
}