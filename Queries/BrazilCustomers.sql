-- All Customers in Brazil
select FirstName, LastName, Country 
From Customer
Where Country IN ('Brazil')