select customers.Cust_NickName, customers.Cust_Salary, Location.Street, Location.City, Location.State
from Customers Right outer join location
on customers.Cust_ID = location.Cust_ID;