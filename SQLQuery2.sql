-- Função Case criando uma nova coluna condicional

-- CASE = Caso
-- WHEN = Quando
-- THEN = Atribua
-- ELSE = Senão

select 
EmployeeKey,
SUM (ExtendedAmount),
CASE 
WHEN SUM(ExtendedAmount) > 5000000 then 'Bateu a meta'
ELSE 'Não bateu a meta'
END as META

from AdventureWorksDW2019.dbo.FactResellerSales
group by EmployeeKey


