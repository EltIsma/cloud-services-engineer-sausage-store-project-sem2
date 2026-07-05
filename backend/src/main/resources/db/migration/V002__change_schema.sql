DROP TABLE IF EXISTS order_product CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS product CASCADE;

CREATE TABLE product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL,
    picture_url TEXT
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    date_created TIMESTAMP NOT NULL,
    status VARCHAR(32) NOT NULL
);

CREATE TABLE order_product (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,

    PRIMARY KEY (order_id, product_id),

    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
