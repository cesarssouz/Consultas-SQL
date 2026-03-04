select 
SalesOrderNumber as 'Ordem de venda',
COUNT (CASE WHEN ExtendedAmount < 3000 THEN 1 END) 'Vendas Baixas',
COUNT (CASE WHEN ExtendedAmount >= 3000 THEN 1 END) 'Vendas Altas'

from AdventureWorksDW2019.dbo.FactResellerSales
group by SalesOrderNumber

select 
SalesOrderNumber,
SalesAmount

from AdventureWorksDW2019.dbo.FactResellerSales
where SalesOrderNumber = 'SO43659'
order by 2