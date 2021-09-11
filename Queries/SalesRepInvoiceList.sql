/* 
Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name.
*/

select e.EmployeeId, e.FirstName, e.LastName, i.InvoiceId, i.BillingAddress, i.BillingAddress, i.BillingCountry, i.Total
From Employee e
join Customer c
on c.SupportRepId = e.EmployeeId
join Invoice i 
on c.CustomerId = i.CustomerId
