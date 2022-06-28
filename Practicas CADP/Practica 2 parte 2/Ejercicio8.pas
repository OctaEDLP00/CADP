Program Ejercicio8;
  function get_digitos_pares_impares( 
    numerosF : LongInt;
    var digitos_pares, 
    digitos_impares : Integer
  );
    var digitos : Integer;
  begin
    while(numerosF<>0) do
    begin
      digitos:=numerosF MOD 10;
      if ((digitos MOD 2) = 0) then
      begin
        digitos_pares:=digitos_pares+1
      end
      else
      begin
        digitos_impares:=digitos_impares+1;
      end;
      numerosF:=numerosF DIV 10;
    end;
  end;
  var
    numeros : LongInt;
    digitos_pares : Integer;
    digitos_impares : Integer;
begin
  Readln(numeros);
  while (digitos <> 123456) do
    digitos_pares := 0;
    digitos_impares := 0;
    get_digitos_pares_impares(
      numeros,
      digitos_pares,
      suma_nudigitos_impares
    );
    Writeln('La cantidad de digitos pares es: ', digitos_Pares);
    Writeln('La suma de todos sus digitos es: ',digitos_Inpares);
    //Readln(numeros);
  end;
end.