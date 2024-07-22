--select * from TblProduct2
select Company_Name
,CASE WHEN Fridge IS NULL THEN 'NA' ELSE 
	CASE WHEN Fridge>500 THEN CAST((Fridge-((Fridge*10)/100)) as varchar(100)) ELSE CAST(Fridge as varchar(100)) END
 END as Fridge
,CASE WHEN Cable IS NULL THEN 'NA' ELSE 
	CASE WHEN Cable>500 THEN CAST((Cable-((Cable*10)/100)) as varchar(100)) ELSE CAST(Cable as varchar(100)) END
 END as Cable
,CASE WHEN CPU IS NULL THEN 'NA' ELSE 
	CASE WHEN CPU>500 THEN CAST((CPU-((CPU*10)/100)) AS varchar(100)) ELSE CAST(CPU AS varchar(100)) END
 END AS Cable
,CASE WHEN Car IS NULL THEN 'NA' ELSE
	CASE WHEN Car>500 THEN CAST((Car-((Car*10)/100)) AS varchar(100)) ELSE CAST(Car AS varchar(100)) END 
 END AS Car
,CASE WHEN VDC IS NULL THEN 'NA' ELSE
	CASE WHEN VDC>500 THEN CAST((VDC-((VDC*10)/100)) AS varchar(100)) ELSE CAST(VDC AS varchar(100)) END
 END AS VDC
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