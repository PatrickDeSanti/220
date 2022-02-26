create table customers
(
    customer_id   int auto_increment
        primary key,
    customer_name varchar(100) null
);

create table orders
(
    order_id    int auto_increment
        primary key,
    customer_id int    null,
    amount      double null,
    constraint orders_ibfk_1
        foreign key (customer_id) references customers (customer_id)
);

create index customer_id
    on orders (customer_id);

create table products
(
    products_id  int auto_increment
        primary key,
    product_name varchar(100) null,
    cost         double       null
);

create table products_orders_association
(
    id         int auto_increment
        primary key,
    order_id   int not null,
    product_id int not null,
    constraint id
        unique (id)
);


