use MyDb
update Facts.FactSalesOrderHeader
set 
EstratificacionFreight = (0),
EstratificacionSubTotal = (0),
EstratificacionTax =
(
select
--top 1 
e.IdEstratificacion
from [Dims.Estratificacion] e
where
	e.ValorMinimo <= Facts.FactSalesOrderHeader.TaxAmt 
	and Facts.FactSalesOrderHeader.TaxAmt < e.ValorMaximo
	and e.TipoEstrato = 'Impuestos'
)
,
EstratificacionTotal =
(0)
