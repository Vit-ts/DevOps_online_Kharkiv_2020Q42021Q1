## Task3.

## PART 1

## 1.Download MySQL server for your OS on VM and Install MySQL server on VM.

#### Поднимаем виртуальную машину на которой будем устанавливать MySQL server

|<img src="screens/1_0.png">|
|:--:|
|<b>Img. 1.1 - Окно PowerShell с поднятием виртуальной машины</b>|

#### Посмотрит что произошло в VirtualBox

|<img src="screens/1_1.png">|
|:--:|
|<b>Img. 1.2 - Поднятый сервер в отображается в окне VirtualBox</b>|

#### Подключаемся к нашей виртуальной машине

|<img src="screens/1_2.png">|
|:--:|
|<b>Img. 1.3 - Окно MobaXterm</b>|

#### Устанавливаем MySQL server

|<img src="screens/1_3.png">|
|:--:|
|<b>Img. 1.4 - Установка MySQL server</b>|
||
|<img src="screens/1_4.png">|
|<b>Img. 1.5 - Версия MySQL server</b>|

## 3.Select a subject area anddescribe the database schema,(minimum 3 tables)

#### Я буду описывать покупателей которые делают различные покупки на каком-либо сайте. Всего будет 5 таблиц: customer, product, product_photo, cart and cart_product.

|<img src="screens/1_5.png">|
|:--:|
|<b>Img. 1.6 - ER диаграмма</b>|

## 4.Create a database on the server through the console.

#### Входим в базу данных

|<img src="screens/1_7.png">|
|:--:|
|<b>Img. 4.1 - Вход в MySQL server</b>|

#### Создаем database

|<img src="screens/4_1.png">|
|:--:|
|<b>Img. 4.1 - Database</b>|
||
|<img src="screens/4_2.png">|
|<b>Img. 4.2 - Таблица customer</b>|
||
|<img src="screens/4_3.png">|
|<b>Img. 4.3 - Таблица product</b>|
||
|<img src="screens/4_4.png">|
|<b>Img. 4.4 - Таблица product_photo</b>|
||
|<img src="screens/4_5.png">|
|<b>Img. 4.5 - Таблица cart</b>|
||
|<img src="screens/4_6.png">|
|<b>Img. 4.6 - Таблица cart_product</b>|

#### Полученые таблицы 

|<img src="screens/4_7.png">|
|:--:|
|<b>Img. 4.7 - Список созданых таблиц</b>|

## 5.Fill in tables.

|<img src="screens/5_1.png">|
|:--:|
|<b>Img. 5.1 - Заполнил таблицу customer</b>|
||
|<img src="screens/5_2.png">|
|<b>Img. 5.2 - Заполнил таблицу product</b>|
||
|<img src="screens/5_4.png">|
|<b>Img. 5.4 - Заполнил таблицу product_photo</b>|
||
|<img src="screens/5_5.png">|
|<b>Img. 5.5 - Таблица cart (сделали корзины для некоторых покупателей)</b>|
||
|<img src="screens/5_6.png">|
|<b>Img. 5.6 - Таблица cart_product</b>|

## 6.Constructand execute SELECT operator with WHERE,GROUP BY and ORDER BY. Execute other different SQL queries DDL, DML, DCL.

#### Выведем имена и email всех покупателей
    
```mysql
    SELECT name, email FROM customer;    
```
|<img src="screens/6_1.png">|
|:--:|
|<b>Img. 6.1 - имена и email всех покупателей</b>|

#### Выведем все с таблицы product где цена больше 86000
    
```mysql
    SELECT * FROM product WHERE price > 86000;    
```
|<img src="screens/6_1_1.png">|
|:--:|
|<b>Img. 6.1.1 - цена больше 86000</b>|

#### Выведем номера телефоном покупателей (кто совершил покупки) у которых сумма заказа меньше 700000

```mysql
    SELECT c.phone AS Phone, SUM(p.price) AS order_price 
    FROM customer c LEFT JOIN cart on cart.customer_id=c.id     
    JOIN cart_product cp ON cp.cart_id=cart.id      
    LEFT JOIN product p ON p.id=cp.product_id 
    GROUP BY c.name HAVING order_price < 70000;
```
|<img src="screens/6_2.png">|
|:--:|
|<b>Img. 6.2 - телефон покупателя с покупкой на сумму менее 70000</b>|

#### Выведем имена покупателей с ценой их заказа и id продукта
    
```mysql
    SELECT c.name, cp.product_id, p.price
    FROM customer c LEFT JOIN cart on cart.customer_id=c.id
    JOIN cart_product cp ON cp.cart_id=cart.id 
    LEFT JOIN product p ON p.id=cp.product_id;    
```

|<img src="screens/6_3.png">|
|:--:|
|<b>Img. 6.3 - имена, продукты и цены</b>|

#### Выведем имена покупателей и сумму их заказа сгрупирированых по имени

```mysql
    SELECT c.name, SUM(p.price) AS order_price
    FROM customer c LEFT JOIN cart on cart.customer_id=c.id
    JOIN cart_product cp ON cp.cart_id=cart.id 
    LEFT JOIN product p ON p.id=cp.product_id 
    GROUP BY c.name;    
```

|<img src="screens/6_4.png">|
|:--:|
|<b>Img. 6.4 - имена и сумма заказа</b>|

#### Выведем имена покупателей и сумму их заказа сгрупирированых по именим и сортирированы по сумме заказа

```mysql
    SELECT c.name, SUM(p.price) AS order_price
    FROM customer c LEFT JOIN cart on cart.customer_id=c.id
    JOIN cart_product cp ON cp.cart_id=cart.id 
    LEFT JOIN product p ON p.id=cp.product_id 
    GROUP BY c.name
    ORDER BY order_price;    
```
|<img src="screens/6_5.png">|
|:--:|
|<b>Img. 6.5 - групирированная и сортированая таблица с именами и сумой заказа</b>|

#### Используем команды DDL

##### Изменим имя столбца в таблицы customer

```mysql
    ALTER TABLE customer CHANGE  name first_name  VARCHAR(50);   
```
|<img src="screens/6_6.png">|
|:--:|
|<b>Img. 6.6 - именение таблицы</b>|

##### Удалим столбец в таблице customer

```mysql
    ALTER TABLE customer DROP COLUMN email;
```
|<img src="screens/6_7.png">|
|:--:|
|<b>Img. 6.7 - удаление стлбца</b>|

#### Используем команды DML

##### Обновление информации в базе данных

```mysql
    UPDATE product SET name = 'iPhone 11' WHERE id = 4;
```
|<img src="screens/6_8.png">|
|:--:|
|<b>Img. 6.8 - именение данных таблицы</b>|

##### Удалим строку в таблице

```mysql
    DELETE FROM customer WHERE id = 3;
```
|<img src="screens/6_9.png">|
|:--:|
|<b>Img. 6.9 - удаление строки</b>|

#### Используем команды DCL

##### Дать привелегии пользователю vagrant

```mysql
    GRANT ALL PRIVILEGES ON DATABASENAME.shop TO vagrant@localhost;
```
|<img src="screens/6_10.png">|
|:--:|
|<b>Img. 6.10 - привелегии</b>|

##### Удалим привелегию

```mysql
    REVOKE SELECT ON product FROM vagrant;
```
|<img src="screens/6_11.png">|
|:--:|
|<b>Img. 6.9 - удаление привелегии</b>|

## 7.Create a database of new users with different privileges. Connect to the database as a new user and verify that the privilegesallow or deny certain actions.

#### Создаем новых пользователей для базы данных

```mysql
    CREATE USER 'new_user'@'localhost' IDENTIFIED BY 'password';
```
|<img src="screens/7_1.png">|
|:--:|
|<b>Img. 7.1 - создание пользователей</b>|

####  Раздаем привелегии

```mysql
    GRANT <permission type> ON <database>.<table> TO '<username>'@'<host>';
```
|<img src="screens/7_2.png">|
|:--:|
|<b>Img. 7.2 - раздача привелегий</b>|

### Проверка доступа

|<img src="screens/7_3.png">|
|:--:|
|<b>Img. 7.3 - Проверка доступа у user1</b>|
||
|<img src="screens/7_4.png">|
|<b>Img. 7.4 - Проверка доступа у user2</b>|
||
|<img src="screens/7_5.png">|
|<b>Img. 7.5 - Проверка доступа у user3</b>|

## 8.Make a selection from the main table DB MySQL.

|<img src="screens/8_1.png">|
|:--:|
|<img src="screens/8_2.png">|
|<b>Img. 8.1 - some selection from main table DB MySQL</b>|

## PART 2

## 9.Make backup of your database.

|<img src="screens/9_1.png">|
|:--:|
|<b>Img. 9.1 - Создание backup</b>|

## 10.Delete the table and/or part of the data in the table.

|<img src="screens/10_1.png">|
|:--:|
|<b>Img. 10.1 - удалил базу данных</b>|

## 11.Restore your database.

|<img src="screens/11_1.png">|
|:--:|
|<img src="screens/11_2.png">|
|<b>Img. 8.1 - Restore the database.</b>|

## 12.Transfer your local database to RDS AWS and connect to your database.

### Create database on AWS RDS

|<img src="screens/12_1.png">|
|:--:|
|<img src="screens/12_2.png">|
|<img src="screens/12_3.png">|
|<img src="screens/12_4.png">|
|<img src="screens/12_5.png">|
|<img src="screens/12_6.png">|
|<b>Img. 12.1 - Create database</b>|

### Open port 3306

|<img src="screens/12_7.png">|
|:--:|
|<b>Img. 12.7 - Open port</b>|

### Connect to RDS and create Database shop

|<img src="screens/12_8.png">|
|:--:|
|<b>Img. 12.8 - Создание базы данных shop on RDS</b>|

### Transfer your local database to RDS AWS

|<img src="screens/12_9.png">|
|:--:|
|<b>Img. 12.9 - Transfer database to RDS AWS</b>|

## 14.Execute SELECT operator similar step 6.

#### Выведем имена всех покупателей где id > 1
    
```mysql
    SELECT first_name FROM customer WHERE id > 1;    
```
|<img src="screens/14_1.png">|
|:--:|
|<b>Img. 14.1 - имена всех покупателей</b>|

#### Выведем name and email покупателей у которых сумма заказа > 700000

```mysql
    SELECT c.first_name, c.phone, SUM(p.price) AS order_price 
    FROM customer c LEFT JOIN cart on cart.customer_id=c.id     
    JOIN cart_product cp ON cp.cart_id=cart.id      
    LEFT JOIN product p ON p.id=cp.product_id 
    GROUP BY c.first_name HAVING order_price > 70000;
```
|<img src="screens/14_2.png">|
|:--:|
|<b>Img. 14.2 - имена и телефоны покупателей с покупкой на сумму более 70000</b>|

## 15.Create the dump of your database.

|<img src="screens/15_1.png">|
|:--:|
|<b>Img. 15.1 - dump of database</b>|

## PART 3

## 16.Create an Amazon DynamoDB table

|<img src="screens/16_1.png">|
|:--:|
|<img src="screens/16_2.png">|
|<b>Img. 16.1 - Create DynamoDB table</b>|

## 17.Enter data into an Amazon DynamoDB table.

|<img src="screens/17_1.png">|
|:--:|
|<b>Img. 17.1 - Enter data into an DynamoDB table</b>|

## 18.Query an Amazon DynamoDB table using Query and Scan.

### Scan

|<img src="screens/18_1.png">|
|:--:|
|<img src="screens/18_2.png">|
|<img src="screens/18_3.png">|
|<b>Img. 16.1 - Using Scan</b>|

### Query

|<img src="screens/18_4.png">|
|:--:|
|<img src="screens/18_5.png">|
|<b>Img. 16.1 - Using Query</b>|