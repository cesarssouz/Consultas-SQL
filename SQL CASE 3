-- Função Case criando uma nova coluna condicional

-- CASE = Caso
-- WHEN = Quando
-- THEN = Atribua
-- ELSE = Senão

select 
EmployeeKey,
SUM (ExtendedAmount) as Vendas,
CASE
WHEN SUM (ExtendedAmount) < 2000000 THEN 'Abaixo'
WHEN SUM (ExtendedAmount) between 2000000 and 5000000 then 'Médio'
ELSE 'Bom'
END as 'Avaliação'


from AdventureWorksDW2019.dbo.FactResellerSales
group by EmployeeKey
order by 2


