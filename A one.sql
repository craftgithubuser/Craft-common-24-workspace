select customers.Cust_NickName, customers.Cust_Salary, Location.Street, Location.City, Location.State
from Customers inner join location
on customers.Cust_ID = location.Cust_ID;

select customers.Cust_NickName, customers.Cust_Salary, Location.Street, Location.City, Location.State
from Customers left outer join location
on customers.Cust_ID = location.Cust_ID;

select customers.Cust_NickName, customers.Cust_Salary, Location.Street, Location.City, Location.State
from Customers right outer join location
on customers.Cust_ID = location.Cust_ID;

select customers.Cust_NickName, customers.Cust_Salary, Location.Street, Location.City, Location.State
from Customers left outer join location
on customers.Cust_ID = location.Cust_ID