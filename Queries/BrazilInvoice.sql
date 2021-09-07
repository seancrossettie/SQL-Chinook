-- Invoices from Brazil

select FirstName [First Name], LastName [Last Name], InvoiceId, InvoiceDate, BillingCountry
From Invoice i 
inner join Customer
on i.CustomerId = Customer.CustomerId
where BillingCountry = 'Brazil'