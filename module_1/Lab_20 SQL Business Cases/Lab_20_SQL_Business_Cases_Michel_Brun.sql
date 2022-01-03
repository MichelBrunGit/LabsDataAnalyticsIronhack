use lab20;

-- 1 Table Cars
create table cars( 
vin char(17),
manufacturer varchar(20),
model varchar(20),
year int,
color varchar(20)
);
-- create table business_Case.Cars(ID int NOT NULL AUTO INCREMENT, VIN varchar(225) primary key);
-- select * from business_Case.Cars;

-- 1.2 
insert into cars values 
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", 2019, "Blue"),
("ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
("HKNDGS7CU31E9Z7JW", "Toyota", "Rav4", 2018, "Silver"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
("DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");
-- INSERT INTO business_Case.Cars (ID,VIN, Manufacturer, Model, years, Color)
-- VALUES ('0', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');

-- deleting the rows :

DELETE FROM cars
WHERE id2 >= 7;

#deleting the row for id=4 :

DELETE FROM cars
WHERE id2 =4;

-- 2 Table Customers
create table customers( 
customer_id char(10),
name varchar(30),
phone_nb char(10),
email varchar(256),
adress varchar(256),
city varchar(100),
state_prov varchar(100),
country varchar(100),
zip char(5)
);

-- 2.1 
insert into customers values 
("1000110001", "Pablo Picasso", "3463617638", "" ,"Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", "28045"),
("2000120001", "Abraham Lincoln", "1305907708","" , "120 SW 8th St", "Miami", "Florida", "United States", "33130"),
("3000130001", "Napoléon Bonaparte", "3179754000","" ,"40 Rue du Colisée", "Paris", "Ile de France", "France", "75008");

-- update 
update customers 
set email = "ppicasso@gmail.com"
where id2 = 1;

update customers 
set email = "lincoln@us.gov"
where id2 = 2;

update customers 
set email = "hello@napoleon.me"
where id2 = 3;


-- 3 Table Sales person 
create table sales_person( 
sales_person char(15),
name varchar(100),
store varchar(150)
);
-- alter table business_Case.Sales_p add primary key (staff_id);

-- 3.1
insert into sales_person values
("00001", "Petey Cruiser", "Madrid"),
("00002", "Anna Sthesia", "Barcelona"),
("00003", "Paul Molive", "Berlin"),
("00004", "Gail Forcewind", "Paris"),
("00005", "Paige Turner", "Miami"),
("00006", "Bob Frapples", "Mexico City"),
("00007", "Walter Melon", "Amsterdam"),
("00008", "Shonda Leer", "São Paulo");

-- update
update sales_person
set store = "Miami" where id2 = 5;

-- 4 Table Invoice 
create table invoices( 
invoice_nb int,
date date,
car_id char(17),
customer_id char(10),
sales_person char(15)
);
-- create table business_Case.invoice (Invoice_n int primary key, constraint fk_invoice_vin FOREIGN KEY(VIN) REFERENCES business_Case.Cars(VIN) on update cascade,constraint fk_invoice_customer_id FOREIGN KEY(customer_id) REFERENCES business_Case.Customers(customer_id) on update cascade,constraint fk_invoice_staff_id FOREIGN KEY(staff_id) REFERENCES business_Case.Sales_p(staff_id))
-- select * from business_Case.Cars;

-- 4.1 add rows 
insert into invoices values
(852399038,"2018-08-22", "01234567891234567", "1234567891", "123456789123456"),
(731166526,"2018-12-31", "11234567891234567", "2234567891", "223456789123456"),
(271135104,"2019-01-22", "31234567891234567", "3234567891", "323456789123456");