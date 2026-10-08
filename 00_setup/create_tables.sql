-- Drop existing tables just in case to make it easy to rerun
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE products CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE employees CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE departments CASCADE CONSTRAINTS';
EXCEPTION WHEN OTHERS THEN NULL;
END;
/

CREATE TABLE departments (
    dept_id NUMBER PRIMARY KEY,
    dept_name VARCHAR2(100) NOT NULL
);

CREATE TABLE employees (
    emp_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    dept_id NUMBER REFERENCES departments(dept_id),
    salary NUMBER(10, 2),
    hire_date DATE
);

CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    product_name VARCHAR2(100),
    price NUMBER(10, 2),
    stock_quantity NUMBER,
    dept_id NUMBER REFERENCES departments(dept_id)
);

-- Insert dummy data (Rwandan Context)
INSERT INTO departments VALUES (10, 'Dairy');
INSERT INTO departments VALUES (20, 'Condiments');
INSERT INTO departments VALUES (30, 'Beverages');

INSERT INTO employees VALUES (101, 'Aline', 'Uwase', 10, 300000, TO_DATE('2020-01-15', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (102, 'Eric', 'Kamanzi', 20, 250000, TO_DATE('2021-06-10', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (103, 'Jean', 'Mugabo', 30, 400000, TO_DATE('2019-11-20', 'YYYY-MM-DD'));
INSERT INTO employees VALUES (104, 'Grace', 'Mutoni', 10, 200000, TO_DATE('2023-03-01', 'YYYY-MM-DD'));

INSERT INTO products VALUES (1, 'Inyange Milk', 1000, 100, 10);
INSERT INTO products VALUES (2, 'Akabanga', 500, 50, 20);
INSERT INTO products VALUES (3, 'Kigali Coffee', 3500, 30, 30);
COMMIT;
