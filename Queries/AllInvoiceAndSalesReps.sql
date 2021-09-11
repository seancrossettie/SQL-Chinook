-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers

select i.InvoiceId [Invoice ID], c.FirstName, c.LastName, c.Country, i.Total [Invoice Total], e.FirstName [Sales Rep First Name], e.LastName [Sales Rep Last Name]
From Invoice i
Join Customer c
on c.CustomerId = i.CustomerId
Join Employee e
on e.EmployeeId = c.SupportRepId