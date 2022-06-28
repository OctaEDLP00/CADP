// Program Programadores;
//   function leerDatos(var legajo : Integer; salario : Real);
//   begin 
//     Writeln('Ingrese el Nº. Legajo y el salario: ');
//     Readln(legajo);
//     Readln(salario);
//   end;
//   function actualizarMax(nuevoLegajo : Integer; nuevoSalario : Real; var maxLegajo : Integer);
//     var
//       maxSalario : Real;
//   begin
//     if ((nuevoSalario > maxSalario) AND (nuevoSalario > maxSalario)) then
//       maxLegajo := nuevoLegajo;
//       maxSalario := nuevoSalario;
//   end;
//   var
//     legajo, maxSalario, i : Integer;
//     salario, maxSalario : Real;
// begin
//   sumaSalarios := 0;
//   for i:= 1 to 130 do begin
//     leerDatos(salario,legajo);
//     actualizarMax(legajo, salario, maxLegajo);
//     sumaSalarios := sumaSalarios + salario;
//   end;
//   Writeln('En todo el mes se gastan ', sumaSalarios:2:2, ' pesos');
//   Writeln('El salario del empleado mas nuevo es: ', maxSalarios:2:2);
// end.

{
 Ejercicio4.pas(12,24) Warning: Local variable "maxSalario" does not seem to be initialized
 Ejercicio4.pas(19,14) Error: Duplicate identifier "maxSalario"
 Ejercicio4.pas(21,3) Error: Identifier not found "sumaSalarios"
 Ejercicio4.pas(23,22) Error: Call by var for arg no. 1 has to match exactly: Got "Real" expected "SmallInt"
 Ejercicio4.pas(24,36) Error: Identifier not found "maxLegajo"
 Ejercicio4.pas(25,5) Error: Identifier not found "sumaSalarios"
 Ejercicio4.pas(25,21) Error: Identifier not found "sumaSalarios"
 Ejercicio4.pas(27,40) Error: Identifier not found "sumaSalarios"
 Ejercicio4.pas(28,53) Error: Identifier not found "maxSalarios"
}

Program Ejercicio4;
  function leerDatos(var legajo : Integer; salario : Real);
  begin 
    Writeln('Ingrese el Nº. Legajo y el salario: ');
    Readln(legajo);
    Readln(salario);
  end;
  var
    legajo, maxSalario, i : Integer;
    salario, maxSalario : Real;
begin
  sumaSalarios := 0;
  for i:= 1 to 130 do begin
    leerDatos(salario,legajo);
    sumaSalarios := sumaSalarios + salario;
  end;
  Writeln('En todo el mes se gastan ', sumaSalarios:2:2, ' pesos');
  Writeln('El salario del empleado mas nuevo es: ', maxSalarios:2:2);
end.