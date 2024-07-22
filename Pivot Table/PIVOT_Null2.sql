--select * from TblProduct
select * from 
(select year,Product,Sales from TblProduct) as ResultSet
PIVOT(
	SUM([Sales])
	for [Product]
	IN(
	[CPU],
	[Pen],
	[Pencile],
	[Mouse]
	)
) as PivotTable
