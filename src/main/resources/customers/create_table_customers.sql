--drop table contacts.CUSTOMERS cascade;
--drop table contacts.ORDERS;

create table contacts.CUSTOMERS
(
    id           bigserial,
    name         varchar(255) not null,
    surname      varchar(255) not null,
    age          int          not null default 18,
    phone_number varchar(20),
    city         varchar(255),
    primary key (id)
);

CREATE INDEX customers_name_idx
    ON contacts.CUSTOMERS (name);

insert into contacts.CUSTOMERS (id, name, surname, age, phone_number, city)
values (1, 'Ivan', 'Ivanov', 18, '+7-095', 'Moscow'),
       (2, 'Alexey', 'Petrov', 38, '+7-111', 'Vladivostok'),
       (3, 'Jan', 'Chanson', 28, '+3-102', 'Helsinki'),
       (4, 'Alexey', 'Popov', 48, '+7-222', 'Samara'),
       (5, 'John', 'Jackson', 58, '+7-095', 'Moscow');

select *
from contacts.CUSTOMERS;