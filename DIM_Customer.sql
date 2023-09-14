--Cleansed DIM_Customer Table
SELECT 
  c.customerKey AS CustomerKey, 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname AS [FirstName], 
  --,[MiddleName]
  c.lastname AS [LastName],
  c.firstname + ' ' + lastname AS [Full Name],
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.datefirstpurchase AS DateFirstPurchase, 
  g.city AS [Customer City] --Joined in the Customer City from the Geography table.
  --,[CommuteDistance]
FROM 
  dbo.DimCustomer AS c 
  LEFT JOIN dbo.dimgeography AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey; --Ordering the list by the CustomerKey in Ascending Order
