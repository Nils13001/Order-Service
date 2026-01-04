--liquibase formatted sql
--changeset Nilesh:DDL-Initial-Order-Table labels:initial-ddl

create table orders(
id bigint primary key auto_increment,
order_number varchar(64) unique not null,
status varchar(32) not null,
total_amount decimal(10,2) not null,
currency varchar(3) not null,
customer_id varchar(64),
created_at timestamp not null default current_timestamp
);

--rollback drop table orders;

--Will make customer_id not Null at later point