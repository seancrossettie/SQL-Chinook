-- What states are our customers in?
select isnull([State], Country) as [Customer State],
	count(*) [Number of Customers], 
	[Customer Names] = string_agg(firstname, ', ')
from Customer c
-- grouping based on state
group by isnull([State], Country)

select *
from Customer 
where [State] is not null

-- how much music was purchased by each customer country?

select *
from Invoice i -- customerId, billing country 
	join InvoiceLine il
		on i.InvoiceId = il.InvoiceId

select *
from Invoice

select * 
from InvoiceLine 
