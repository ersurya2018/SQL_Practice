select * from --TblProduct2
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