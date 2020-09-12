DROP TABLE IF EXISTS store_inventory;
CREATE TABLE store_inventory (
  id SERIAL PRIMARY KEY,
  product_name VARCHAR NOT NULL UNIQUE,
  price BIGINT NOT NULL,
  brand VARCHAR NOT NULL,
  date_added TIMESTAMPTZ NOT NULL DEFAULT now(),
  product_description VARCHAR NOT NULL
);