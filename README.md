# Mechanic Workshop Database

This repository contains the database schema for a mechanic workshop management system. The database schema is defined in the SQL script file named `OficinaMecanincaDB.sql`. Additionally, there are two visual representations of the database model in the form of MySQL Workbench files: `OficinaMecanincaDB.png` and `OficinaMecanincaDB.mwb`.

## Database Model

### Tables

1. **customers**
   - Fields: id, name, email, phone, city, state
   - Primary Key: id

2. **mechanics**
   - Fields: id, name, specialization
   - Primary Key: id

3. **services**
   - Fields: id, description, labor_cost
   - Primary Key: id

4. **parts**
   - Fields: id, description, price
   - Primary Key: id

5. **work_orders**
   - Fields: id, number, issue_date, total_value, status, delivery_date, customer_id, mechanic_id, execution_authorization
   - Primary Key: id
   - Foreign Keys: customer_id (references customers.id), mechanic_id (references mechanics.id)

6. **work_orders_services**
   - Fields: work_order_id, service_id
   - Primary Key: work_order_id, service_id
   - Foreign Keys: work_order_id (references work_orders.id), service_id (references services.id)

7. **work_orders_parts**
   - Fields: work_order_id, part_id, quantity
   - Primary Key: work_order_id, part_id
   - Foreign Keys: work_order_id (references work_orders.id), part_id (references parts.id)

### Changes Made
- **work_orders table:**
  - Added `mechanic_id` field to reference the mechanic responsible for the work order.
  - Added `execution_authorization` field to indicate whether the execution was authorized.

## Database Visualization

- [**OficinaMecanincaDB.png**](OficinaMecanincaDB.png): A visual representation of the database schema.

- [**OficinaMecanincaDB.mwb**](OficinaMecanincaDB.mwb): MySQL Workbench file containing the database model.

## How to Use

1. **SQL Script:**
   - Execute the SQL script `OficinaMecanincaDB.sql` on your MySQL database server to create the database and tables.

2. **MySQL Workbench:**
   - Open the MySQL Workbench files (`OficinaMecanincaDB.mwb`) to visualize and interact with the database model using MySQL Workbench.

Feel free to customize the database according to your specific requirements.

## Contributors

- Luis Gustavo Cezar Puga (lgustavopuga)

## License

This project is licensed under the [MIT] License - see the [LICENSE.md](LICENSE.md) file for details.
