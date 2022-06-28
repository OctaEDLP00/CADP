Program Ejercicio11;
  function A(
    letrasf:char;
    var contadorf:Integer;
    var cumpleAf:Boolean
  );
  begin
    while(letrasf <> '$') AND (letrasf <> '%')do
    begin
        Readln(letrasf);
        contadorf := contadorf + 1;
    end;
    if (letrasf = '%') then
    begin
      cumpleAf:=true;
    end;     
  end;
  function B(
    letrasfB : char;
    var contadorfB : Integer;
    var cumpleB : Boolean
  );
  var
    arroba : Integer;
    contadorB : Integer;
  begin
    arroba := 0;
    contadorB := 0;
    cumpleB := false;
    while ((arroba < 3) AND (contadorB < contadorfB) AND (letrasfB <> '*'))   do
    begin
      Readln(letrasfB);
      contadorB := contadorB + 1;
      if(letrasfB = '@') then
      begin
        arroba := arroba + 1;
      end;
    end;
    if(letrasfB = '*') then
    begin
      cumpleB := true;
    end;
  end;
var
  letras : Char;
  contador : Integer;
  cumpleA : Boolean;
begin
  contador := 0;
  cumpleA := false;
  read(letras);
  A(letras,contador,cumpleA);
  if (cumpleA)then
  begin
    B(letras,contador,cumpleA);
  end;
end.