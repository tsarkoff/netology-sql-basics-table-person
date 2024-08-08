create schema contacts;

create table contacts.person
(
    id             bigserial,
    name           text not null,
    surname        text not null,
    age            int  not null default 18,
    phone_number   text,
    city_of_living text,
    primary key (name, surname, age)
);

insert into contacts.person (name, surname, age, phone_number, city_of_living)
values ('Ivan', 'Ivanov', 18, '+7-095', 'Moscow'),
       ('Jan', 'Chanson', 28, '+3-102', 'Helsinki'),
       ('John', 'Jackson', 38, '+7-095', 'Moscow');