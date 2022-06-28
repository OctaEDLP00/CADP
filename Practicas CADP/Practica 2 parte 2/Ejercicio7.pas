Program Ejercicio7;
  function get_digitos( 
    numerosF:LongInt;
    var cantidad_numerosF,suma_numerosF:Integer
  );
    var digitos:Integer;
  begin
    while(numerosF<>0) do
    begin
      digitos:=numerosF MOD 10;
      cantidad_numerosF:=cantidad_numerosF+1;
      suma_numerosF:=suma_numerosF+digitos;
      numerosF:=numerosF DIV 10;
    end;
  end;
  var 
    numeros:LongInt;
    cantidad_numeros:Integer;
    suma_numeros:Integer;
begin
  repeat 
    cantidad_numeros := 0;
    suma_numeros := 0;
    read(numeros);
    get_digitos(
      numeros,
      cantidad_numeros,
      suma_numeros
    );
  until (suma_numeros = 10);
    Writeln('La cantidad de digitos es: ', cantidad_numeros);
    Writeln('La suma de todos sus digitos es: ',suma_numeros);
end.