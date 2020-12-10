CREATE TABLE bouquets(
    id UUID PRIMARY KEY, 
    name VARCHAR(255) NOT NULL, 
    price NUMERIC(5,2) NOT NULL,
    description VARCHAR(255) NOT NULL,
    picture_url VARCHAR(255) NOT NULL 
);

CREATE TABLE orders(
    id UUID PRIMARY KEY, 
    created_at TIMESTAMP NOT NULL 
);

CREATE TABLE order_bouquets (
    order_id UUID references orders(id) NOT NULL,
    bouquet_id UUID references bouquets(id) NOT NULL
);
