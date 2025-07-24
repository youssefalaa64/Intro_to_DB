CREATE TABLE Authors(author_id INT PRIMARY KEY, author_name VARCHAR(215));
CREATE TABLE Customers(Customer_id INT PRIMARY KEY, customer_name VARCHAR(215) NOT NULL, email VARCHAR(215) UNIQUE, address TEXT NOT NULL);
CREATE TABLE Books(book_id INT PRIMARY KEY, title VARCHAR(130) NOT NULL, author_id INT, FOREIGN KEY (author_id) REFERENCES Authors(author_id));
CREATE TABLE Orders(order_id INT PRIMARY KEY, customer_id INT, FOREIGN KEY (customer_id) REFERENCES Customers(customer_id), order_date DATE NOT NULL);
CREATE TABLE Order_Details(orderdatail_id INT PRIMARY KEY, order_id INT, FOREIGN KEY (order_id) REFERENCES Orders(order_id), customer_id INT, FOREIGN KEY (customer_id) REFERENCES Customers(customer_id), quantity DOUBLE NOT NULL);