## Task3.1

## PART 1

## 1.Download MySQL server for your OS on VM and Install MySQL server on VM.

#### We raise the virtual machine on which we will install the MySQL server

| <img src = "screens/1_0.png"> |
|:--:|
| <b> Img. 1.1 - PowerShell window with raising a virtual machine </b> |

#### See what happened in VirtualBox

| <img src = "screens/1_1.png"> |
|:--:|
| <b> Img. 1.2 - The lifted server is displayed in the VirtualBox window </b> |

#### Connecting to our virtual machine

| <img src = "screens/1_2.png"> |
|:--:|
| <b> Img. 1.3 - MobaXterm Window </b> |

#### Install MySQL server

| <img src = "screens/1_3.png"> |
|:--:|
| <b> Img. 1.4 - Installing MySQL server </b> |
||
| <img src = "screens/1_4.png"> |
| <b> Img. 1.5 - MySQL server version </b> |

## 3.Select a subject area anddescribe the database schema, (minimum 3 tables)

#### I will describe buyers who make various purchases on any site. There will be 5 tables in total: customer, product, product_photo, cart and cart_product.

| <img src = "screens/1_5.png"> |
|:--:|
| <b> Img. 1.6 - ER diagram </b> |

## 4.Create a database on the server through the console.

#### Enter the database

| <img src = "screens/1_7.png"> |
|:--:|
| <b> Img. 4.1 - Login to MySQL server </b> |

#### Create database

| <img src = "screens/4_1.png"> |
|:--:|
| <b> Img. 4.1 - Database </b> |
||
| <img src = "screens/4_2.png"> |
| <b> Img. 4.2 - The customer table </b> |
||
| <img src = "screens/4_3.png"> |
| <b> Img. 4.3 - Product table </b> |
||
| <img src = "screens/4_4.png"> |
| <b> Img. 4.4 - Product_photo table </b> |
||
| <img src = "screens/4_5.png"> |
| <b> Img. 4.5 - The cart table </b> |
||
| <img src = "screens/4_6.png"> |
| <b> Img. 4.6 - The cart_product table </b> |

#### Received tables

| <img src = "screens/4_7.png"> |
|:--:|
| <b> Img. 4.7 - List of tables created </b> |

## 5.Fill in tables.

| <img src = "screens/5_1.png"> |
|:--:|
| <b> Img. 5.1 - Populated the customer table </b> |
||
| <img src = "screens/5_2.png"> |
| <b> Img. 5.2 - Populated the product table </b> |
||
| <img src = "screens/5_4.png"> |
| <b> Img. 5.4 - Populated the product_photo table </b> |
||
| <img src = "screens/5_5.png"> |
| <b> Img. 5.5 - Cart table (made baskets for some customers) </b> |
||
| <img src = "screens/5_6.png"> |
| <b> Img. 5.6 - The cart_product table </b> |

## 6.Constructand execute SELECT operator with WHERE, GROUP BY and ORDER BY. Execute other different SQL queries DDL, DML, DCL.

#### Display the names and email addresses of all buyers
    
```mysql
    SELECT name, email FROM customer;
```

| <img src = "screens/6_1.png"> |
|:--:|
| <b> Img. 6.1 - names and emails of all buyers </b> |

#### Display everything from the product table where the price is more than 86000
    
```mysql
    SELECT * FROM product WHERE price> 86000;
```

| <img src = "screens/6_1_1.png"> |
|:--:|
| <b> Img. 6.1.1 - the price is more than 86000 </b> |

#### Display phone numbers of buyers (who made purchases) whose order amount is less than 700,000

```mysql
    SELECT c.phone AS Phone, SUM (p.price) AS order_price
    FROM customer c LEFT JOIN cart on cart.customer_id = c.id
    JOIN cart_product cp ON cp.cart_id = cart.id
    LEFT JOIN product p ON p.id = cp.product_id
    GROUP BY c.name HAVING order_price <70000;
```

| <img src = "screens/6_2.png"> |
|:--:|
| <b> Img. 6.2 - customer's phone number with a purchase of less than 70,000 </b> |

#### Display the names of buyers with the price of their order and product id
    
```mysql
    SELECT c.name, cp.product_id, p.price
    FROM customer c LEFT JOIN cart on cart.customer_id = c.id
    JOIN cart_product cp ON cp.cart_id = cart.id
    LEFT JOIN product p ON p.id = cp.product_id;
```

| <img src = "screens/6_3.png"> |
|:--:|
| <b> Img. 6.3 - names, products and prices </b> |

#### Display the names of customers and the amount of their order grouped by name

```mysql
    SELECT c.name, SUM (p.price) AS order_price
    FROM customer c LEFT JOIN cart on cart.customer_id = c.id
    JOIN cart_product cp ON cp.cart_id = cart.id
    LEFT JOIN product p ON p.id = cp.product_id
    GROUP BY c.name;
```

| <img src = "screens/6_4.png"> |
|:--:|
| <b> Img. 6.4 - names and order amount </b> |

#### Display the names of customers and the amount of their order, grouped by name and sorted by order amount

```mysql
    SELECT c.name, SUM (p.price) AS order_price
    FROM customer c LEFT JOIN cart on cart.customer_id = c.id
    JOIN cart_product cp ON cp.cart_id = cart.id
    LEFT JOIN product p ON p.id = cp.product_id
    GROUP BY c.name
    ORDER BY order_price;
```

| <img src = "screens/6_5.png"> |
|:--:|
| <b> Img. 6.5 - grouped and sorted table with names and order amount </b> |

#### Using DDL Commands

##### Change column name in customer tables

```mysql
    ALTER TABLE customer CHANGE name first_name VARCHAR (50);
```

| <img src = "screens/6_6.png"> |
|:--:|
| <b> Img. 6.6 - naming a table </b> |

##### Let's delete a column in the customer table

```mysql
    ALTER TABLE customer DROP COLUMN email;
```

| <img src = "screens/6_7.png"> |
|:--:|
| <b> Img. 6.7 - deleting a column </b> |

#### Using DML Commands

##### Updating information in the database

```mysql
    UPDATE product SET name = 'iPhone 11' WHERE id = 4;
```

| <img src = "screens/6_8.png"> |
|:--:|
| <b> Img. 6.8 - naming table data </b> |

##### Let's delete a row in the table

```mysql
    DELETE FROM customer WHERE id = 3;
```

| <img src = "screens/6_9.png"> |
|:--:|
| <b> Img. 6.9 - deleting a line </b> |

#### Using DCL Commands

##### Give privileges to vagrant user

```mysql
    GRANT ALL PRIVILEGES ON DATABASENAME.shop TO vagrant @ localhost;
```

| <img src = "screens/6_10.png"> |
|:--:|
| <b> Img. 6.10 - privileges </b> |

##### Remove the privilege

```mysql
    REVOKE SELECT ON product FROM vagrant;
```

| <img src = "screens/6_11.png"> |
|:--:|
| <b> Img. 6.9 - removing privileges </b> |

## 7.Create a database of new users with different privileges. Connect to the database as a new user and verify that the privilegesallow or deny certain actions.

#### Create new users for the database

```mysql
    CREATE USER 'new_user' @ 'localhost' IDENTIFIED BY 'password';
```

| <img src = "screens/7_1.png"> |
|:--:|
| <b> Img. 7.1 - creating users </b> |

#### Distributing privileges

```mysql
    GRANT <permission type> ON <database>. <table> TO '<username>' @ '<host>';
```

| <img src = "screens/7_2.png"> |
|:--:|
| <b> Img. 7.2 - distribution of privileges </b> |

### Access check

| <img src = "screens/7_3.png"> |
|:--:|
| <b> Img. 7.3 - Checking access for user1 </b> |
||
| <img src = "screens/7_4.png"> |
| <b> Img. 7.4 - Checking access for user2 </b> |
||
| <img src = "screens/7_5.png"> |
| <b> Img. 7.5 - Checking access for user3 </b> |

## 8.Make a selection from the main table DB MySQL.

| <img src = "screens/8_1.png"> |
|:--:|
| <img src = "screens/8_2.png"> |
| <b> Img. 8.1 - some selection from main table DB MySQL </b> |

## PART 2

## 9.Make backup of your database.

| <img src = "screens/9_1.png"> |
|:--:|
| <b> Img. 9.1 - Creating a backup </b> |

## 10.Delete the table and / or part of the data in the table.

| <img src = "screens/10_1.png"> |
|:--:|
| <b> Img. 10.1 - deleted the database </b> |

## 11.Restore your database.

| <img src = "screens/11_1.png"> |
|:--:|
| <img src = "screens/11_2.png"> |
| <b> Img. 8.1 - Restore the database. </b> |

## 12.Transfer your local database to RDS AWS and connect to your database.

### Create database on AWS RDS

| <img src = "screens/12_1.png"> |
|:--:|
| <img src = "screens/12_2.png"> |
| <img src = "screens/12_3.png"> |
| <img src = "screens/12_4.png"> |
| <img src = "screens/12_5.png"> |
| <img src = "screens/12_6.png"> |
| <b> Img. 12.1 - Create database </b> |

### Open port 3306

| <img src = "screens/12_7.png"> |
|:--:|
| <b> Img. 12.7 - Open port </b> |

### Connect to RDS and create Database shop

| <img src = "screens/12_8.png"> |
|:--:|
| <b> Img. 12.8 - Create a shop on RDS database </b> |

### Transfer your local database to RDS AWS

| <img src = "screens/12_9.png"> |
|:--:|
| <b> Img. 12.9 - Transfer database to RDS AWS </b> |

## 14.Execute SELECT operator similar step 6.

#### Display the names of all buyers where id> 1
    
```mysql
    SELECT first_name FROM customer WHERE id> 1;
```

| <img src = "screens/14_1.png"> |
|:--:|
| <b> Img. 14.1 - names of all buyers </b> |

#### Display the name and email of buyers whose order amount is> 700000

```mysql
    SELECT c.first_name, c.phone, SUM (p.price) AS order_price
    FROM customer c LEFT JOIN cart on cart.customer_id = c.id
    JOIN cart_product cp ON cp.cart_id = cart.id
    LEFT JOIN product p ON p.id = cp.product_id
    GROUP BY c.first_name HAVING order_price> 70000;
```

| <img src = "screens/14_2.png"> |
|:--:|
| <b> Img. 14.2 - names and phone numbers of buyers with purchases over 70,000 </b> |

## 15.Create the dump of your database.

| <img src = "screens/15_1.png"> |
|:--:|
| <b> Img. 15.1 - dump of database </b> |

## PART 3

## 16.Create an Amazon DynamoDB table

| <img src = "screens/16_1.png"> |
|:--:|
| <img src = "screens/16_2.png"> |
| <b> Img. 16.1 - Create DynamoDB table </b> |

## 17.Enter data into an Amazon DynamoDB table.

| <img src = "screens/17_1.png"> |
|:--:|
| <b> Img. 17.1 - Enter data into an DynamoDB table </b> |

## 18.Query an Amazon DynamoDB table using Query and Scan.

### Scan

| <img src = "screens/18_1.png"> |
|:--:|
| <img src = "screens/18_2.png"> |
| <img src = "screens/18_3.png"> |
| <b> Img. 16.1 - Using Scan </b> |

### Query

| <img src = "screens/18_4.png"> |
|:--:|
| <img src = "screens/18_5.png"> |
| <b> Img. 16.1 - Using Query </b> |
