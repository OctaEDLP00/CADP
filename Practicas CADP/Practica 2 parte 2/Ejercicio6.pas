Program Ejercicio6;
  function leer_productos
  (
    var precio_final : Real; 
    var codigo_final : Integer;
    var tipo_final : String;
  );
  begin 
    Writeln('Precio: ');
    Readln(precio_final);
    Writeln('Codigo: ');
    Readln(codigo_final);
    Writeln('Tipo: ');
    Readln(,tipo_final);
  end;
  function pantalon_caro
  (
    var Pant_Precio_MaxF:Real;
    var Pantalon_CodigoF:Integer;
    precio2:Real;
    codigo2:Integer; 
    tipo2:String
  );
  begin
    if (tipo2 = 'Pantalon') then 
    begin
      if (precio2 > Pant_Precio_MaxF) then 
      begin
        Pant_Precio_MaxF := precio2;
        Pantalon_CodigoF := codigo2
      end;
    end;
  end;
  function productos_baratos
  (
    var precio_barato1F:Real; 
    var Codigo_Mas_BaratoF:Integer; 
    var Codigo_SegundoMas_BaratoF:Integer;
    precio_barato2F:Real;
    precio_comparar:Real;
    codigo_comparar:Integer
  );
  begin
    if(precio_comparar<precio_barato1F) then
    begin
      precio_barato2F:=precio_barato1F;
      Codigo_SegundoMas_BaratoF:=Codigo_Mas_BaratoF;
      precio_barato1F:=precio_comparar;
      Codigo_Mas_BaratoF:=codigo_comparar;
    else
		begin
	    if(precio_comparar<precio_barato2F) then
			begin
				precio_barato2F:=precio_comparar;
				Codigo_SegundoMas_BaratoF:=codigo_comparar;
			end;
		end;
  end;
type    
    cadena=String[10];
var 
    precio_barato1,precio_barato2,promedio,Sumas_Promedio,Pant_Precio_Max,precio:Real;
    Codigo_Mas_Barato,Codigo_SegundoMas_Barato,numero,i,codigo,Pantalon_Codigo:Integer;
    tipo:String;
begin
  precio_barato1 := 9999;
  precio_barato2 := 9999;
  Codigo_Mas_Barato := 99999;
  Codigo_SegundoMas_Barato := 9999;
  promedio := 0;
  Sumas_Promedio := 0;
  Pantalon_Codigo := -1;
  Pant_Precio_Max := -1;
  numero := 3;
  for i := 1 to numero do 
  begin
    leer_productos(precio,codigo,tipo);
    productos_baratos(precio_barato1,precio_barato2,precio,Codigo_Mas_Barato,Codigo_SegundoMas_Barato,codigo);
    pantalon_caro(precio,Pant_Precio_Max,codigo,Pantalon_Codigo,tipo);
    Sumas_Promedio := Sumas_Promedio+precio;
  end;
  promedio := Sumas_Promedio/numero;

  Writeln('El codigo con Pantalon mas caro es: ' ,Pantalon_Codigo );
  Writeln('El promedio de todos los productos es: ',promedio:2:2 );
  Writeln('El producto mas barato es: ', Codigo_Mas_Barato );
  Writeln('El segundo producto mas barato es: ',Codigo_SegundoMas_Barato );
end.
















(* Program Ejercicio6;
  function factorial(n:Integer):Integer;
  begin
    if n=0 then
      factorial:=1
    else
      factorial:=n*factorial(n-1);
  end;
begin
  Writeln('Ingrese un numero: ');
  Readln(n);
  Writeln('El factorial de ',n,' es: ',factorial(n));  
end. *)