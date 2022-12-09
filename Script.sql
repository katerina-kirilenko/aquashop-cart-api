CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

create table carts (
    id uuid primary key default uuid_generate_v4(),
    created_at date not null,
    updated_at date not null
)

create table cart_items (
    cart_id uuid,
    product_id uuid default uuid_generate_v4(),
    count integer,
    foreign key ("cart_id") references "carts" ("id")
)

insert into carts (created_at, updated_at) values
('2022-02-02', '2022-02-03'),
('2022-05-12', '2022-05-03')

insert into cart_items (cart_id, count) values
('8ecfd3be-a9f3-4f97-8b55-b9c23bcd81fa', 10),
('8ecfd3be-a9f3-4f97-8b55-b9c23bcd81fa', 20),
('8ecfd3be-a9f3-4f97-8b55-b9c23bcd81fa', 30),
('7da60c25-dbd9-4da8-9b97-7324cf03b155', 13),
('7da60c25-dbd9-4da8-9b97-7324cf03b155', 15)