-- DROP DATABASE
DROP DATABASE IF EXISTS ecommercebackend_db;

-- CREATE DATABASE
CREATE DATABASE ecommercebackend_db;


create table Category (
	id int not null auto_increment,
    category_name varchar(30),
    primary key (id)
);

create table Product (
	id int not null auto_increment,
    product_name varchar(30),
    price decimal(20,2) not null,
    stock int not null,
    category_id int,
    primary key (id),
    foreign key (category_id) references Category(id)
);

create table Tag (
	id int not null auto_increment,
    tag_name varchar(30),
    primary key (id)
);

create table ProductTag (
	id int not null auto_increment,
    product_id int,
    tag_id int,
    primary key (id),
    foreign key (product_id) references Product(id),
    foreign key (tag_id) references Tag(id)
);