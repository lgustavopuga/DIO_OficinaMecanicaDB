CREATE DATABASE mechanic_workshop;

USE mechanic_workshop;

CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE mechanics (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    specialization VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE services (
    id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    labor_cost FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE parts (
    id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE work_orders (
    id INT NOT NULL AUTO_INCREMENT,
    number INT NOT NULL,
    issue_date DATE NOT NULL,
    total_value FLOAT NOT NULL,
    status VARCHAR(255) NOT NULL,
    delivery_date DATE NOT NULL,
    customer_id INT NOT NULL,
    mechanic_id INT, -- Referência ao mecânico responsável
    execution_authorization BOOLEAN, -- Indica se a execução foi autorizada
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics (id) -- Referência ao mecânico responsável pela OS
);

CREATE TABLE work_orders_services (
    work_order_id INT NOT NULL,
    service_id INT NOT NULL,
    PRIMARY KEY (work_order_id, service_id),
    FOREIGN KEY (work_order_id) REFERENCES work_orders (id),
    FOREIGN KEY (service_id) REFERENCES services (id)
);

CREATE TABLE work_orders_parts (
    work_order_id INT NOT NULL,
    part_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (work_order_id, part_id),
    FOREIGN KEY (work_order_id) REFERENCES work_orders (id),
    FOREIGN KEY (part_id) REFERENCES parts (id)
);
CREATE DATABASE mechanic_workshop;

USE mechanic_workshop;

CREATE TABLE customers (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE mechanics (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    specialization VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE services (
    id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    labor_cost FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE parts (
    id INT NOT NULL AUTO_INCREMENT,
    description VARCHAR(255) NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE work_orders (
    id INT NOT NULL AUTO_INCREMENT,
    number INT NOT NULL,
    issue_date DATE NOT NULL,
    total_value FLOAT NOT NULL,
    status VARCHAR(255) NOT NULL,
    delivery_date DATE NOT NULL,
    customer_id INT NOT NULL,
    mechanic_id INT, -- Addition of the mechanic_id field
    execution_authorization BOOLEAN, -- Addition of the execution_authorization field
    PRIMARY KEY (id),
    FOREIGN KEY (customer_id) REFERENCES customers (id),
    FOREIGN KEY (mechanic_id) REFERENCES mechanics (id) -- Addition of foreign key for mechanics
);

CREATE TABLE work_orders_services (
    work_order_id INT NOT NULL,
    service_id INT NOT NULL,
    PRIMARY KEY (work_order_id, service_id),
    FOREIGN KEY (work_order_id) REFERENCES work_orders (id),
    FOREIGN KEY (service_id) REFERENCES services (id)
);

CREATE TABLE work_orders_parts (
    work_order_id INT NOT NULL,
    part_id INT NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (work_order_id, part_id),
    FOREIGN KEY (work_order_id) REFERENCES work_orders (id),
    FOREIGN KEY (part_id) REFERENCES parts (id)
);