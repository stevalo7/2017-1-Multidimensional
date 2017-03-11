SELECT        c.CustomerID, p.PersonType, p.FirstName, p.LastName, s.Name AS StoreName, st.Name AS SalesTerritoryName, st.CountryRegionCode, cr.Name AS CountryRegionName, st.[Group]
INTO MyDb.Dims.Customers
FROM            Person.CountryRegion AS cr INNER JOIN
                         Sales.SalesTerritory AS st ON cr.CountryRegionCode = st.CountryRegionCode RIGHT OUTER JOIN
                         Sales.Customer AS c LEFT OUTER JOIN
                         Person.Person AS p ON c.PersonID = p.BusinessEntityID ON st.TerritoryID = c.TerritoryID LEFT OUTER JOIN
                         Sales.Store AS s ON c.StoreID = s.BusinessEntityID
select count (*) from sales.Customer