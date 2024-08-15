create table contacts.ORDERS
(
    id           bigserial,
    date         varchar(255) not null,
    customer_id  bigserial    not null,
    product_name varchar(255) not null,
    amount       int,
    primary key (id),
    foreign key (customer_id) references contacts.CUSTOMERS (id)
);

CREATE INDEX orders_product_name_idx
    ON contacts.ORDERS (product_name);

insert into contacts.ORDERS (date, customer_id, product_name, amount)
values ('2024-08-01', 1, 'Bread', 10),
       ('2024-08-05', 2, 'Milk', 5),
       ('2024-08-05', 2, 'Cake', 10),
       ('2024-07-02', 3, 'Butter', 500),
       ('2024-07-20', 4, 'Meat', 5),
       ('2024-07-20', 4, 'Bread', 5),
       ('2024-07-20', 4, 'Ketchup', 5),
       ('2024-08-15', 5, 'Cake', 3);

select *
from contacts.ORDERS;
