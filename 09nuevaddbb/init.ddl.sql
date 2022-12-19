\connect template1;
DROP DATABASE if exists db;
CREATE DATABASE db;
\connect db;

CREATE EXTENSION "uuid-ossp";

CREATE TABLE productos (
    sku uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    price money,
    tittle varchar(80),
    long_description text
);

Insert INTO productos (price, tittle, long_description) VALUES
	(12.4, 'ejemplo1', 'producto de ejemplo 1'),
	(34.43, 'ejemplo2', 'producto de ejemplo 2');