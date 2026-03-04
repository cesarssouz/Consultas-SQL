select 
YEAR (OrderDate) as ANO, 
MONTH (OrderDate) as MES,
DAY (OrderDate) as DIA,
COUNT( CASE WHEN ExtendedAmount < 3000 THEN 1 END) 'Venda baixa',
COUNT( CASE WHEN ExtendedAmount >= 3000 THEN 2 END) 'Venda alta'


from AdventureWorksDW2019.dbo.FactResellerSales

group by YEAR (OrderDate), MONTH (OrderDate), DAY (OrderDate)
order by 1, 2, 3

