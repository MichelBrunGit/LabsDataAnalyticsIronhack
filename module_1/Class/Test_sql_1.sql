select * from example.exdata;
select Date,`Refund Expiration` from example.exdata;
select concat(Date,' ',Time) from example.exdata;
select concat(Date,' ',Time) as DateTime1 , Quantity from example.exdata;
select Amount,Quantity,Date from example.exdata
where Amount >50;
select Item,Amount,Quantity,Date from example.exdata
where Item like "%EXTRA3";
select * from example.exdata order by Amount;
select * from example.exdata order by Amount desc;
select * from example.exdata order by Amount desc, Date asc;
select Item,Amount from example.exdata group by Item;
select Item,sum(Amount) from example.exdata group by Item;
