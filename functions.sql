CREATE  FUNCTION SeleccionarDiaDiario (codigopaciente INT, FECHABUSQUEDA date)
RETURNS nvarchar(max)

BEGIN

  declare notasDiario nvarchar(MAX)
 
  SELECT AnotacionDiario
  INTO notasDiario
  from DiariosPaciente
  where codigopaciente = idPaciente
  and FECHABUSQUEDA = fechaAnotacionDiario
 
 
  if notasDiario is null then
  SET notasDiario = "Error, no hay anotaciones en el diario para la fecha indicada"
  end if;
  return notasDiario
