create database luyentapkieuanh2quanlytourdulich;
use luyentapkieuanh2quanlytourdulich;
create table city(
	id int primary key auto_increment,
    name varchar(50)
);
create table customer(
	id int primary key auto_increment,
    name varchar(50),
    idCard varchar(20),
    DoB date,
    city_id int,
    foreign key (city_id) references city(id)

);
create table traveldestinations(
	id int primary key auto_increment,
    name varchar(50),
    description varchar(50),
    price double,
    city_id int,
    foreign key (city_id) references city(id)
);

create table tourtype(
	id int primary key auto_increment,
    idtype int,
    name varchar(20)
);
create table tour(
	id int primary key auto_increment,
    idtour int,
    typetour_id int,
    traveldestinations_id int,
    daystart date,
    dayend DATE,
    foreign key (typetour_id) references tourtype(id),
    foreign key (traveldestinations_id) references traveldestinations(id)
)
insert into city(id,name)
values(1,'Hà Nội');
insert into city(id,name)
values(2,'Đà Nẵng');
insert into city(id,name)
values(3,'Nha Trang');
insert into city(id,name)
values(4,'Sapa');
insert into city(id,name)
values(5,'Quảng Ninh');

insert into customer(name,idCard,DoB,city_id)
values('Lê Thành Công','123456789','1998-11-28',1);

insert into customer(name,idCard,DoB,city_id)
values('Nguyễn Thị Như','123456700','1999-11-20',1);
insert into customer(name,idCard,DoB,city_id)
values('Bùi Thuý Quỳnh','123456752','1998-3-18',1);
insert into customer(name,idCard,DoB,city_id)
values('Đào Hải Yến','123456152','2000-11-28',2);
insert into customer(name,idCard,DoB,city_id)
values('Vũ Minh Trang','123456232','2000-01-20',2);
insert into customer(name,idCard,DoB,city_id)
values('Tạ Mai Trang','123456472','2000-05-28',3);
insert into customer(name,idCard,DoB,city_id)
values('Hoàng Thu Dương','123456142','2001-05-20',3);
insert into customer(name,idCard,DoB,city_id)
values('Dương Ánh Ngọc','123456471','2002-07-25',4);
insert into customer(name,idCard,DoB,city_id)
values('Nguyễn Thu Hồng','123456421','2002-03-25',4);
insert into customer(name,idCard,DoB,city_id)
values('Triệu Hoàng Vân','123456412','2003-07-24',5);
insert into customer(name,idCard,DoB,city_id)
values('Em Đẹp Lắm','123456412','2003-08-25',5);


insert into tourtype(idtype,name)
values(1,'Thường');
insert into tourtype(idtype,name)
values(2,'Vip');
insert into traveldestinations(name,description,price,city_id)
values('công viên Thủ Lệ','Công viên sở thú giữ lòng thủ đô Hà Nội',200000,1);
insert into traveldestinations(name,description,price,city_id)
values('Bãi biển Đà Năng','1 bãi biển đẹp tại thành phố Đà Nẵng',300000,2);
insert into traveldestinations(name,description,price,city_id)
values('Bãi biển Nha Trang','1 bãi biển đẹp tại thành phố Nha Trang',350000,3);
insert into traveldestinations(name,description,price,city_id)
values('Đèo Sapa','con đường dẫn đến thị trấn Sapa',250000,4);
insert into traveldestinations(name,description,price,city_id)
values('Bãi biển Bãi Cháy','1 bãi biển đẹp tại thành phố Quảng Ninh',350000,5);

insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (1,1,1,'2021-03-20','2021-04-15');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (2,1,1,'2021-03-18','2021-04-20');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (3,2,1,'2021-05-20','2021-07-15');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (4,2,2,'2021-07-20','2021-08-15');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (5,1,2,'2021-07-06','2021-08-15');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (6,1,1,'2021-02-06','2021-03-10');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (7,2,3,'2021-02-09','2021-04-10');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (8,2,4,'2021-01-05','2021-02-6');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (9,1,5,'2021-10-09','2021-11-10');
insert into tour(idtour,typetour_id,traveldestinations_id,daystart,dayend)
values (10,2,5,'2021-04-02','2021-04-16');

create table tourinvoice(
	id int primary key auto_increment,
    tour_id int,
    customer_id int,
    status bit default 1,
    foreign key (tour_id) references tour(id),
    foreign key (customer_id) references customer(id)
);

insert into tourinvoice(tour_id,customer_id)
values(1,1);
insert into tourinvoice(tour_id,customer_id)
values(2,2);
insert into tourinvoice(tour_id,customer_id)
values(3,3);
insert into tourinvoice(tour_id,customer_id)
values(4,4);
insert into tourinvoice(tour_id,customer_id)
values(5,5);
insert into tourinvoice(tour_id,customer_id)
values(6,6);
insert into tourinvoice(tour_id,customer_id)
values(7,7);
insert into tourinvoice(tour_id,customer_id)
values(8,8);
insert into tourinvoice(tour_id,customer_id)
values(9,9);
insert into tourinvoice(tour_id,customer_id)
values(10,10);


select city.name,count(city.id)
from city join traveldestinations on city.id = traveldestinations.city_id
join tour on tour.traveldestinations_id = traveldestinations.id
group by city.name;

-- select  traveldestinations.description, count(tour.daystart)
-- from  tour join traveldestinations on tour.traveldestinations_id = traveldestinations.id
-- group by traveldestinations.description;

select   tour.id,count(tour.daystart)
from  tour 
where month(tour.daystart) = '2'
group by 
tour.id