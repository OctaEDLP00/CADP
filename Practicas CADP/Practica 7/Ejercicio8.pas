Program Ejercicio8;
  type
    meses = 'Enero'..'Noviembre';
    range = 1..8;
    fecha = record 
      dia: integer;
      mes: meses;
    end;
    transferencias = record 
      nro_cuenta_origen : integer;
      DNI_titular_cuenta_origen : integer;
      nro_cuenta_destino : integer;
      DNI_titular_cuenta_destino : integer;
      hora : integer;
      F : fecha;
      monto : real;
      codigo_motivo_transferencia : range;
    end;
    vector_contador = array[range] of integer;
    lista = ^nodo;
    nodo = record
      dato : transferencias;
      sig : lista;
    end;
  function tranferencia_terceros(
    var terceros : lista; 
    transf : transferencias
  );
    var nue,ant,act:lista;
  begin 
    new(nue);
    nue^.dato := transf;
    actual := terceros;
    ant := terceros;
    while ((act <> nil) AND (act^.dato.nro_cuenta_origen < transf.nro_cuenta_origen)) do begin
      ant := act;
      act := act^.sig;
    end;
    if (ant = act) then begin
      L := nue;
    end else begin 
      ant^.sig := nue;
    end;
    nue^.sig := act;
  end;
  function mayor_transfer_terceros(
    vec_cont : vector_contador;
    var alto : integer
  );
    var i : integer;
  begin
    for i:=1 to 8 do begin
      if (vec_cont[i] > alto) then begin
        alto := vec_cont[i];
      end;
    end;
  end;
  function leer_digitos(numero : integer):boolean;
  var dig,par,impar : integer;
  begin 
    par := 0;
    impar := 0;
    while (numero > 0) do begin
      dig := numero MOD 10;
      if ((dig MOD 2) = 0) then begin
        par := par + 1;
      end else begin
        impar := impar + 1;
      end;
      numero := numero div 10;
    end;
  end;
  function recorrer_lista(L:lista);
    var 
      terceros : lista;
      monto_tranfer : real;
      vec_cont : vector_contador;
      tipo,alto, cant_c : integer;
      cumple : boolean;
  begin
    monto_tranfer := 0;
    while (L <> nil) do begin
      if () then begin
        tranferencia_terceros(terceros,L^.dato);
        monto_tranfer := monto_tranfer + L^.dato.monto;
      end;
      tipo := L^.dato.codigo_motivo_transferencia;
      vec_cont[tipo] := vec_cont[tipo] + 1;
      if (L^.dato.F.mes = 'Junio') then begin 
        cumple := leer_digitos(L^.dato.nro_cuenta_origen);
        if (cumple) then begin
            cant_c:= cant_c + 1;
        end;
      end;
      L := L^.sig;
    end;
    mayor_transfer_terceros(vec_cont,alto);
  end;
  var 
    L : lista;
BEGIN
  l := nil;
  //cargar_lista(L);
  recorrer_lista(L);
END.