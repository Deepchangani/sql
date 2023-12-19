use emp;
CREATE TABLE salesperson
(
	sno int primary key,
    SNAME text not null,
    city text,
    cummision decimal(3,2)
);

CREATE TABLE customer(
CNM int primary key,
CNAME TEXT NOT NULL,
CITY TEXT,
RATING INT ,
sno int,
foreign key(sno) references salesperson(sno)
);

insert into salesperson(sno,SNAME,city,cummision)VALUES
(1001,"peel","london",0.12),
(1002,"Seres","San jose",0.13),
(1004,"Motika","london",0.11),
(1007,"Rafkin","barcelona",0.15),
(1003,"Axelrod","new york",0.1);

drop table salesperson;
drop table customer;

SELECT * FROM salesperson;

insert into customer(CNM,CNAME,CITY,RATING,sno)VALUES
(201,"Hoffman","london",100,1001),
(202,"giovanne","roe",200,1003),
(203,"Liu","san jose",300,1002),
(204,"Grass","barcelona",100,1002),
(206,"clemens","london",300,1007),
(207,"pereria","roe",100,1004);

SELECT * FROM customer ;


-- wrong question
-- Q12.Retrieve the below data from above table

-- Q 13.All orders for more than $1000.



-- Q 14
SELECT SNAME,city,cummision from salesperson where city='london' AND cummision > 0.12; 

-- Q15

SELECT * FROM salesperson where  city='barcelona' OR city='london';

-- Q 16.All salespeople with commission between 0.10 and 0.12. (Boundary valuesshould be excluded).

SELECT * FROM salesperson where cummision BETWEEN 0.10 AND 0.12;

-- Q 17
-- .All customers excluding those with rating <= 100 unless they are located
-- inRome

SELECT * FROM customer 
where rating<=100;

-- q 18

CREATE TABLE salespeople (
salesmen_id int primary KEY,
NAME VARCHAR (255),
CITY TEXT,
CUMMISION decimal(3,2)
);

INSERT INTO salespeople(salesmen_id,NAME,CITY,CUMMISION)VALUES 
(5001,"James Hoog","New York",0.15),
(5002,"Nail Knite" ,"Paris" , 0.13),
(5005,"Pit Alex","London", 0.11),
(5006,"Mc Lyon ", "Paris",0.14),
(5007,"JPaul Adam" , "Rome",0.13),
(5003,"Lauson Hen ","San Jose",0.12);

select * from salespeople;

-- Q 19

CREATE TABLE orders(
ord_no int primary key not null,
purch_amt decimal(5,2),
ord_date date,
customer_id int ,
salesman_id int 
);

INSERT INTO orders(ord_no,purch_amt,ord_date,customer_id,salesman_id)VALUES
(70001,150.5,"2012-10-05",3005,5002),
(70009,270.65,"2012-9-10",3001,5005),
(7002,65.26,"2012-10-05",3002,5001),
(70004,110.5,"2012-8-17",3009,5003),
(70007,948.5,"2012-9-10",3005,5002),
(70005,2400.6,"2012-7-27",3007,5001),
(70008,5760.1,"2012-9-10",3002,5001),
(70010,1983.43,"2012-10-10",3004,5006),
(70003,2480.4,"2012-10-10",3009,5003),
(70012,250.45,"2012-6-27",3008,5002),
(70011,75.29,"2012-8-17",3003,5007),
(70013,304.1,"2012-4-25",3002,5001);


SELECT ord_no,ord_date,purch_amt from orders where salesman_id=5001;
SELECT * FROM orders;




-- Q 20

SELECT * from item_mast where pro_price 
between 200 AND 600;

-- Q21

SELECT avg(pro_price) from item_mast where pro_com =16;


-- Q 22 
CREATE TABLE  item_mast(
pro_id int primary key not null,
pro_name text not null,
pro_price int ,
pro_com int
);


insert into item_mast (pro_id,pro_name,pro_price,pro_com)VALUES
(101,"MOTHER BOARD",3200,15),
(102,"key BOARD",450,16),
(103,"Zip drive",250,14),
(104,"Speaker",550,16),
(105,"Monitor",5000,11),
(106,"DVD drive",900,12),
(107,"MOTHER BOARD",800,12),
(108,"Monitor",2600,13),
(109,"refill cartridge",350,13),
(110,"Mouse",3200,15);

SELECT  pro_name as item_name from item_mast;
SELECT  pro_price as price_in_RS from item_mast;  


-- question 23

SELECT pro_price,pro_name from item_mast where pro_price>=250 ORDER BY pro_price; 
SELECT pro_name from item_mast  ORDER BY pro_name asc; 
SELECT pro_price,pro_name from item_mast;


-- question 24

SELECT pro_com AS Company_Code, AVG(pro_price) AS Average_Price
FROM item_mast
GROUP BY pro_com;



