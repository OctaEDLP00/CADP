Program EjerciciosAdd;
  function A(var vocalesf:char);
  var
    signo_dinero:Boolean;
  begin
    signo_dinero:=true;
    while (vocalesf = 'a') or (vocalesf = 'e') or (vocalesf = 'i') or (vocalesf = 'o') or (vocalesf = 'u') AND (signo_dinero <> false) do
    begin
      Readln(vocalesf);
      if (vocalesf = '$') then
      begin
        signo_dinero:=false;
        Writeln('cumple hasta A');
      end;
    end;
    if(signo_dinero = true) then
    begin
      Writeln('No se cumple en A');
    end;
  end;
  function B(vocalesf:char);
  var
    signo_numeral:Boolean;
  begin
    signo_numeral:=true;
    while (vocalesf <> 'a') AND (vocalesf <> 'e') AND (vocalesf <> 'i') AND (vocalesf <> 'o') AND (vocalesf <> 'u') AND (signo_numeral<>false) do
      begin
        Readln(vocalesf);
        if(vocalesf = '#') then
        begin
          signo_numeral:=false;
          Writeln('Se cumple En B tambien');
        end;
      end;
    if(signo_numeral=true) then
    begin
      Writeln('No se cumple en B');
    end;
  end;
var vocales:Char;
begin
  vocales:='a';
  Writeln('Secuencia de solo letras vocales');
  A(vocales);
  Writeln('Secuencia de solo caracteres alfabeticos sin vocales: ');
  B(vocales);
end.