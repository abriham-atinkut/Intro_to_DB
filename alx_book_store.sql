CREATE DATABASE IF NOT EXISTS alx_book_store


CREATE TABLE Books (
    book_id INT (PRIMARY KEY)
    title VARCHAR(130)
    FOREIGN KEY (author_id) REFERENCES Authrors (author_id)
    price DOUBLE
    publication_date DATE
);

CREATE TABLE Authors (
    author_id (FOREIGN KEY)
    author_name VARCHAR(215)
);

CREATE TABLE Customers (
    customer_id INT (FOREIGN KEY)
    customer_name VARCHAR(215)
    email VARCHAR(215)
    address TEXT
);

CREATE TABLE Orders (
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    order_date DATE
    order_id VARCHAR(251)
);

CREATE TABLE Order_Details (
    orderdetailid (Primary Key)
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);