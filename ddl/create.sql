CREATE TABLE IF NOT EXISTS products (
    id integer PRIMARY KEY, 
    name varchar(100) not null, 
    description varchar(10000) not null, 
    price integer not null, 
    tax_rate integer not null, 
    created_datetime timestamp not null default current_timestamp
);
COMMENT ON TABLE products IS '商品';
COMMENT ON COLUMN products.id IS '商品ID: 商品を一意にするID';
COMMENT ON COLUMN products.name IS '商品名: 商品の名前';
COMMENT ON COLUMN products.description IS '商品説明: 商品詳細説明';

CREATE TABLE IF NOT EXISTS users (
    id integer PRIMARY KEY, 
    first_name varchar(100), 
    family_name varchar(10000), 
    zipcode char(7), 
    address varchar(100)
);
CREATE TABLE IF NOT EXISTS orders (
    id integer PRIMARY KEY, 
    product_id integer, 
    user_id integer
);
