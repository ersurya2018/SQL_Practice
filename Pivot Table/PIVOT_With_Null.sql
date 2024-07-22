select Company_Name
,CASE WHEN Fridge IS NULL THEN 'NA' ELSE CAST(Fridge as varchar(100)) END as Fridge
,CASE WHEN Cable IS NULL THEN 'NA' ELSE CAST(Cable as varchar(100)) END as Cable
,CASE WHEN CPU IS NULL THEN 'NA' ELSE CAST(CPU AS varchar(100)) END AS Cable
,CASE WHEN Car IS NULL THEN 'NA' ELSE CAST(Car AS varchar(100)) END AS Car
,CASE WHEN VDC IS NULL THEN 'NA' ELSE CAST(VDC AS varchar(100)) END AS VDC
from 
(
  select Company_Name,
  Product_Name,
  Price from TblProduct2
) As Result
PIVOT(
	SUM([Price])
	FOR [Product_Name]
	IN 
		([Fridge],
		 [Cable],
		 [CPU],
		 [Car],
		 [VDC]
		)
) as PivotTable