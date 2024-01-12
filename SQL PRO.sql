CREATE DATABASE Library;
USE Library;

CREATE TABLE Branchs(Branch_No INT PRIMARY KEY, Manager_ID INT, Branch_Address VARCHAR(250), Contact_No BIGINT);
INSERT INTO Branchs(Branch_No, Manager_ID, Branch_Address, Contact_No)
           VALUES(1101, 354, 'British Council Library,Secretariat Road,Hyderabad - 500063', 040-23483333),
                 (1102, 562, 'Central Library (IIT),I. I. T. Guwahati,Guwahati - 781039', 0361-2583000),
                 (1103, 765, 'Khuda Baksh Oriental Library,Ashok Rajpath,Patna - 800004',  0612-2301507),
                 (1104, 863, 'DELNET,J. N. U. Campus,Nelson Mandela Road,New Delhi - 110070', 011-26741246),
                 (1105, 934, 'Delhi Public Library,R. K. Puram,Sector – 8, R.K Puram,New Delhi - 110022', 011-26193080),
                 (1106, 234, 'Central Library,Gulbarga University,Gulbarga - 585106', 08472-263260),
                 (1107, 725, 'Central Library,Kerala Agricultural University,Thrissur - 680656',  0487-2370432),
                 (1108, 698, 'State Central Library,Palayam,Vikas Bhawan,Thiruvananthapuram - 695034', 0471-2322895),
                 (1109, 998, 'Central Library (IIT),I I T Bombay, Powai,Mumbai - 400076', 022-25768920),
                 (1110, 781, ' T S Central State Library,Sec - 17C,Punjab - 147004', 0172-2701269),
                 (1111, 423, 'Central Library (IIT),IIT Madras,Chennai - 600036',  044-22574951),
                 (1112, 564, ' Raza Library,Hamid Manzil, Fort,Rampur - 244901', 0595-2327244);
SELECT * FROM Branchs;

CREATE TABLE Employees(Emp_ID INT PRIMARY KEY, Emp_Name VARCHAR(15), Position VARCHAR(25), Salary INT, Branch_No INT,FOREIGN KEY (Branch_No) REFERENCES Branchs(Branch_No));
INSERT INTO Employees(Emp_ID, Emp_Name, Position, Salary, Branch_No)
          VALUES(801, 'Susmitha', 'Librarian', 35000, 1106),
                (802, 'Akhila', 'Manager', 55000, 1110),
                (803, 'Mukesh', 'Head Librarian', 50000, 1106),
                (804, 'Nimitha', 'Librarian', 45000, 1107),
                (805, 'Vikas', 'Head Librarian', 45000, 1103),
                (806, 'Akash', 'Admin', 25000, 1107),
                (807, 'Lakshmi', 'Supervisor', 35000, 1106),
                (808, 'John', 'Librarian', 35000, 1109),
                (810, 'Angel', 'Admin', 25000, 1111),
                (811, 'Prakash', 'Librarian', 30000, 1110);
                
CREATE TABLE Customer(Customer_ID INT PRIMARY KEY, Customer_Name VARCHAR(25), Customer_Address VARCHAR(50), Reg_Date DATE);
INSERT INTO Customer (Customer_ID, Customer_Name, Customer_Address, Reg_Date)
VALUES
    (1601, 'Hari Priya', 'Ellis Road, Tamilnadu', '2021-11-23'),
    (1602, 'Lavanya', '56,lower Range, Ballygunj', '2023-10-20'),
    (1603, 'Karthik', 'D 27 Sector 7,Delhi', '2021-12-30'),
    (1604, 'Amarthya', 'C 401 3rd Floor, Timber Market', '2020-09-13'),
    (1605, 'Hashir', '203, Concord, Alkapuri', '2020-08-23'),
    (1606, 'Muhamed', '2nd Floor, Mani Mahal, Mathew Road', '2022-11-01'),
    (1607, 'Chacko', '3nd Floor, Mani Mahal, Tamilnadu', '2021-05-03'),
    (1608, 'Mathew', 'Bara Bazar, Guru Nanak Market, Kashmere', '2022-06-23'),
    (1609, 'Anupama', 'Poonam Darshan , Poonam Nagar, 4 Off Mc Rd', '2021-10-23'),
    (1610, 'Yamuna', '24, Asaf Ali Road, Rohiniu', '2021-11-23'),
    (1611, 'Mahesh', 'Station Road, Opp Bank Of India, Goregaon', '2021-07-29'),
    (1612, 'Vijina', 'Parwana Road, Opp Sukh Vihar, Baldev', '2022-02-11'),
    (1613, 'Kalam', 'Bhaveshwer Complex, Near Rly Station', '2023-11-23'),
    (1614, 'Abu', '399,srindlcplxhbblblr-24, Hebbal', '2020-04-03');
SELECT * FROM Customer;

CREATE TABLE Books (ISBN VARCHAR(20) PRIMARY KEY,Book_Title VARCHAR(150),Category VARCHAR(50),Rental_Price DECIMAL(10,2),
    Status VARCHAR(3) CHECK (Status IN ('YES','NO')),Author VARCHAR(50),Publisher VARCHAR(50)); 
INSERT INTO Books(ISBN, Book_Title, Category, Rental_Price, Status, Author, Publisher)
           VALUES('978-93-5019-561-1', 'Junior Level Books Introduction to Computer', 'Information Technology', 250, 'YES', 'Amit Garg', ' Readers Zone'),
                 ('978-93-8067-432-2', 'Client Server Computing', 'Information Technology', 220, 'YES', 'Lalit Kumar', 'Sun India Publications'),
                 ('10-6998844549','Making India Awesome', 'Novel',160, 'YES', 'Chetan Bhagat', 'Rupa Publications'),
                 ('0-679-75247-1', 'A River Sutra', 'Novel', 150, 'YES', 'Gita Mehta', 'Doubleday (US) Heinemann (UK)'),
                 ('2230-7540', 'A Passage to England', 'Article', 280, 'NO', 'Ajay Singh', 'Ignited Minds Journals'),
                 ('B07DGHDHN8', 'A Bunch of Old Letters', 'History', 150, 'NO', 'Jawaharlal Nehru ', 'Penguin'),
                 ('0-940322-82-X', 'The Autobiography of an Unknown Indian', 'Autobiographical', 200, 'YES', 'Nirad C. Chaudhuri', '	Macmillan'),
                 ('9788171305506', 'Chemmeen', 'Novel', 180, 'NO', '	Thakazhi Sivasankara Pillai', 'National Book Stall, D. C.'),
                 ('2021-08-27', 'The brides book of beauty', 'Novel', 170, 'YES', 'Mulk Raj Anand', 'Kutub'),
                 ('81-7530-0310', 'The Glass Palace', 'Historical Novel', 160, 'YES', '	Amitav Ghosh', 'Ravi Dayal, Penguin India');
SELECT * FROM  Books;


CREATE TABLE Issue_Status (Issue_ID INT PRIMARY KEY, Issued_Cust INT, FOREIGN KEY(Issued_Cust) REFERENCES Customer(Customer_ID),
    Issued_Book_Name VARCHAR(150), Issue_date DATE,Isbn_Book VARCHAR(20), FOREIGN KEY(Isbn_Book) REFERENCES Books(ISBN));
INSERT INTO Issue_Status (Issue_ID, Issued_Cust, Issued_Book_Name, Issue_date, Isbn_Book)
        VALUES(1221, 1606, 'Chemmeen', '2023-11-21', '9788171305506'),
			  (1222, 1609, 'The Glass Palace', '2024-01-01', '81-7530-0310'),
              (1223, 1601, 'Chemmeen', '2023-12-20', '9788171305506'),
              (1224, 1603, 'A Passage to England', '2023-10-11', '2230-7540'),
			  (1225, 1606, 'The brides book of beauty', '2023-09-22', '2021-08-27'),
              (1226, 1610, 'Junior Level Books Introduction to Computer', '2023-11-21', '978-93-5019-561-1'),
              (1227, 1611, 'A River Sutra', '2024-01-02', '0-679-75247-1'),
              (1228, 1612, 'A Bunch of Old Letters', '2023-01-21', 'B07DGHDHN8'),
              (1229, 1603, 'Making India Awesome', '2023-10-21', '10-6998844549');
SELECT * FROM Issue_Status;
    
CREATE TABLE Return_Stats(Return_ID INT PRIMARY KEY, Return_Cust INT, Return_Book_Name VARCHAR(150), Return_Date DATE, Isbn_Book2 VARCHAR(20), 
FOREIGN KEY (Isbn_Book2) REFERENCES Books(ISBN));
INSERT INTO Return_Stats (Return_ID, Return_Cust, Return_Book_Name, Return_Date, Isbn_Book2)
VALUES 
    (1321, 1603, 'A Passage to England', '2023-11-10', '2230-7540'),
    (1322, 1611, 'A River Sutra', '2024-01-12', '0-679-75247-1'),
    (1323, 1603, 'Making India Awesome', '2023-12-12', '10-6998844549'),
    (1324, 1609, 'The Glass Palace', '2024-01-12', '81-7530-0310'),
    (1325, 1610, 'Junior Level Books Introduction to Computer', '2024-01-05', '978-93-5019-561-1'),
    (1326, 1601, 'Chemmeen', '2023-12-25', '9788171305506');
SELECT * FROM Return_Stats;


#1. Retrieve the book title, category, and rental price of all available books.

SELECT Book_Title, Category, Rental_Price FROM Books;

#2. List the employee names and their respective salaries in descending order of salary.

SELECT Emp_Name, Salary FROM Employees ORDER BY Salary DESC;

#3. Retrieve the book titles and the corresponding customers who have issued those books.

SELECT Issue_Status.Issued_Book_Name AS Book_Title, Customer.Customer_Name FROM Issue_Status JOIN Customer ON Issue_Status.Issued_Cust = Customer.Customer_ID;

#4.Display the total count of books in each category.

SELECT Category, COUNT(*) AS Total_Books_Count FROM Books GROUP BY Category;

#5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.40,000.

SELECT Emp_Name, Position, Salary FROM  Employees WHERE Salary > 40000;

#6. List the customer names who registered before 2023-01-01 and have not issued any books yet.

SELECT Customer_Name FROM Customer WHERE Reg_Date < '2023-01-01' AND Customer_ID NOT IN (SELECT Issued_Cust FROM Issue_Status);

#7. Display the branch numbers and the total count of employees in each branch.

SELECT Branch_No, COUNT(*) AS Total_Employees_Count FROM Employees GROUP BY Branch_No;

#8. Display the names of customers who have issued books in the month of October 2023.

SELECT Customer.Customer_Name FROM Customer JOIN Issue_Status ON Customer.Customer_ID = Issue_Status.Issued_Cust 
WHERE YEAR(Issue_Status.Issue_date) = 2023 AND MONTH(Issue_Status.Issue_date) = 10;

#9. Retrieve book_title from book table containing history.

SELECT Book_Title FROM Books WHERE Category = 'History';

#10. Retrieve the branch numbers along with the count of employees for branches having more than 2 employees

SELECT Branch_No, COUNT(*) AS Employee_Count FROM Employees GROUP BY Branch_No HAVING COUNT(*) > 2;

