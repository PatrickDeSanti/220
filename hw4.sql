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


