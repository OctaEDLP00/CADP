Program Ejercicio10;
type
  str20 = string[20];
  productos = record
    codigo : integer;
    nombre : string;
    estatal_privada: boolean;
    nombre_radicacion_pructo: str20;
  end;
  range = 1..100;
  vector_productos = array[range] of productos;
BEGIN

END.