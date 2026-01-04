--liquibase formatted sql
--changeset Nilesh:DDL-Initial-Order_Item-Table labels:initial-ddl

create table order_items(
id bigint primary key auto_increment,
order_id bigint not null,
sku varchar(64) not null,
name varchar(255) not null,
quantity int not null,
unit_price decimal(10,2) not null,
total_price decimal(10,2) not null,
created_at timestamp not null default current_timestamp,

constraint fk_order_items_order
    foreign key (order_id) references orders(id)
    on delete cascade

);

--rollback drop table order_items;