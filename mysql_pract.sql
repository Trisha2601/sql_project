use Library_management;
drop table Books;
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    category_id INT,
    isbn VARCHAR(20) UNIQUE,
    published_date DATE,
    available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);
INSERT INTO Books (title, author_id, category_id, isbn, published_date, available) VALUES
('Harry Potter and the Sorcerer''s Stone', 1, 1, '978-0439708180', '1997-06-26', TRUE),
('A Game of Thrones', 2, 2, '978-0553573404', '1996-08-06', TRUE),
('The Hobbit', 3, 1, '978-0547928227', '1937-09-21', TRUE),
('Murder on the Orient Express', 4, 3, '978-0062693662', '1934-01-01', TRUE),
('The Shining', 5, 4, '978-0307743657', '1977-01-28', TRUE),
('Pride and Prejudice', 6, 5, '978-0141439518', '1813-01-28', TRUE),
('The Adventures of Huckleberry Finn', 7, 6, '978-0486280615', '1884-12-10', TRUE),
('Great Expectations', 8, 3, '978-0141439563', '1861-01-01', TRUE),
('The Old Man and the Sea', 9, 4, '978-0684801223', '1952-09-01', TRUE),
('The Great Gatsby', 10, 5, '978-0743273565', '1925-04-10', TRUE),
('Foundation', 11, 7, '978-0553293357', '1951-05-01', TRUE),
('The Hound of the Baskervilles', 12, 3, '978-1909621751', '1902-04-01', TRUE),
('War and Peace', 13, 2, '978-1853260629', '1869-01-01', TRUE),
('The Time Machine', 14, 4, '978-0553213515', '1895-01-01', TRUE),
('The Tell-Tale Heart', 15, 4, '978-1442142168', '1843-01-01', TRUE),
('The Iliad', 16, 1, '978-0140275360', '1924-01-01', TRUE),
('To the Lighthouse', 17, 2, '978-0156907392', '1927-05-05', TRUE),
('To Kill a Mockingbird', 18, 5, '978-0061120084', '1960-07-11', TRUE),
('Frankenstein', 19, 4, '978-0486282114', '1818-01-01', TRUE),
('The Metamorphosis', 20, 5, '978-0486290300', '1915-01-01', TRUE);
select * from Books;

drop table Authors;
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    bio TEXT
);
INSERT INTO Authors (name, bio) VALUES
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('George R.R. Martin', 'American novelist and short story writer.'),
('J.R.R. Tolkien', 'English writer, poet, philologist, and academic.'),
('Agatha Christie', 'English writer known for her detective novels.'),
('Stephen King', 'American author of horror, supernatural fiction, suspense, and fantasy novels.'),
('Jane Austen', 'English novelist known for her six major novels.'),
('Mark Twain', 'American writer, humorist, entrepreneur, publisher, and lecturer.'),
('Charles Dickens', 'English writer and social critic.'),
('Ernest Hemingway', 'American novelist, short-story writer, and journalist.'),
('F. Scott Fitzgerald', 'American novelist, best known for The Great Gatsby.'),
('Isaac Asimov', 'American writer and professor of biochemistry.'),
('Arthur Conan Doyle', 'British writer best known for his Sherlock Holmes detective stories.'),
('Leo Tolstoy', 'Russian writer who is regarded as one of the greatest authors of all time.'),
('H.G. Wells', 'English writer in many genres, including the novel.'),
('Edgar Allan Poe', 'American writer, poet, editor, and literary critic.'),
('Homer', 'Ancient Greek epic poet, author of The Iliad and The Odyssey.'),
('Virginia Woolf', 'English writer, considered one of the most important modernist 20th-century authors.'),
('Harper Lee', 'American novelist best known for To Kill a Mockingbird.'),
('Mary Shelley', 'English novelist who wrote Frankenstein.'),
('Franz Kafka', 'German-speaking Bohemian writer.');
select * from Authors;
drop table Members;
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    address TEXT,
    age int,
    check(age>=18),
    join_date DATE
);
INSERT INTO Members (name, email, phone, address, age, join_date) VALUES
('Arun Kumar', 'arun@example.com', '1234567890', '123 Anna Salai', 18, '2023-01-01'),
('Priya Ramesh', 'priya@example.com', '2345678901', '012 Sholinganallur', 20, '2023-02-15'),
('Vikram Raj', 'vikram@example.com', '3456789012', '123 T. Nagar', 21, '2023-03-20'),
('Meena Chandran', 'meena@example.com', '4567890123', '456 Velachery', 35, '2023-04-25'),
('Ravi Sekar', 'ravi@example.com', '5678901234', '123 Mylapore', 32, '2023-05-30'),
('Divya Subramaniam', 'divya@example.com', '6789012345', '678 Tambaram', 36, '2023-06-10'),
('Karthik Selvan', 'karthik@example.com', '7890123456', '123 Guindy', 42, '2023-07-15'),
('Anjali Srinivasan', 'anjali@example.com', '8901234567', '123 Kodambakkam', 19, '2023-08-20'),
('Mani Shankar', 'mani@example.com', '9012345678', '901 Velachery Main Rd', 19, '2023-09-25'),
('Lakshmi Narayanan', 'lakshmi@example.com', '0123456789', '123 Perungudi', 22, '2023-10-30'),
('Sundar Rajan', 'sundar@example.com', '1234567891', '123 Adyar', 40, '2023-11-10'),
('Deepa Balaji', 'deepa@example.com', '2345678912', '234 Besant Nagar', 25, '2023-12-15'),
('Ramesh Kumar', 'ramesh@example.com', '3456789123', '345 Velachery', 27, '2024-01-01'),
('Gayathri Suresh', 'gayathri@example.com', '4567891234', '456 Mount Road', 26, '2024-02-15'),
('Arjun Kannan', 'arjun@example.com', '5678912345', '678 Tambaram', 31, '2024-03-20'),
('Latha Natarajan', 'latha@example.com', '6789123456', '678 Pallavaram', 26, '2024-04-25'),
('Bala Krishna', 'bala@example.com', '7891234567', '789 Anna Nagar', 29, '2024-05-30'),
('Revathi Iyer', 'revathi@example.com', '8901234568', '890 Saidapet', 35, '2024-06-10'),
('Ajith Ravi', 'ajith@example.com', '9012345679', '678 Tambaram', 32, '2024-07-15'),
('Varsha Venkatesh', 'varsha@example.com', '0123456789', '012 Sholinganallur', 30, '2024-08-20');
select * from Members;
drop table Loans;
CREATE TABLE Loans (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE,
    due_date DATE,
    return_date DATE
);
INSERT INTO Loans (book_id, member_id, loan_date, due_date, return_date) VALUES
(1, 1, '2023-01-10', '2023-01-24', NULL),
(2, 2, '2023-02-20', '2023-03-06', '2023-03-01'),
(3, 3, '2023-03-25', '2023-04-08', '2023-04-05'),
(4, 4, '2023-04-30', '2023-05-14', '2023-05-12'),
(5, 5, '2023-06-01', '2023-06-15', NULL),
(6, 6, '2023-06-20', '2023-07-04', '2023-07-02'),
(7, 7, '2023-07-25', '2023-08-08', '2023-08-07'),
(8, 8, '2023-08-30', '2023-09-13', '2023-09-10'),
(9, 9, '2023-09-05', '2023-09-19', '2023-09-18'),
(10, 10, '2023-10-10', '2023-10-24', '2023-10-22'),
(11, 11, '2023-11-15', '2023-11-29', NULL),
(12, 12, '2023-12-20', '2024-01-03', '2024-01-01'),
(13, 13, '2024-01-25', '2024-02-08', NULL),
(14, 14, '2024-02-29', '2024-03-14', NULL),
(15, 15, '2024-03-05', '2024-03-19', '2024-03-18'),
(16, 16, '2024-04-10', '2024-04-24', NULL),
(17, 17, '2024-05-15', '2024-05-29', '2024-05-27'),
(18, 18, '2024-06-20', '2024-07-04', '2024-07-01'),
(19, 19, '2024-07-25', '2024-08-08', NULL),
(20, 20, '2024-08-30', '2024-09-13', '2024-09-12');
select * from Loans;
drop table Categories;
CREATE TABLE Categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) UNIQUE NOT NULL
);
INSERT INTO Categories (category_name) VALUES
('Fiction'),
('Non-Fiction'),
('Science Fiction'),
('Fantasy'),
('Mystery'),
('Biography'),
('Self-Help'),
('Historical'),
('Romance'),
('Horror'),
('Thriller'),
('Adventure'),
('Children'),
('Young Adult'),
('Classics'),
('Poetry'),
('Graphic Novels'),
('Philosophy'),
('Science'),
('Art');
update Members set name='Trisha',email='trisha@example.com' where member_id=2;
update Books set available=FALSE where book_id=3;
select * from Members;
select * from Books;
describe Books;
alter table Books rename column isbn to ISBN_number;
select * from Books;
select distinct name from authors; 
select name,email from Members order by name,email;
select name,bio from Authors order by bio asc,name desc;
select * from Books where published_date>'1934-01-01' and available=TRUE;
select * from Loans where loan_date>'2023-01-10' or return_date is null;
select * from Books where (category_id = 1 OR author_id = 1) and available = TRUE;
select * from loans where not return_date='2024-01-01';
select * from loans where return_date is null;
select *from Members where join_date is not null;
select * from Books limit 5;
select count(age) from Members where age=19;
select age from Members;
select * from Authors where name LIKE 'A%';
select * from Authors where name LIKE 'I%' or bio LIKE '_nglish %';
select * from Authors where bio like '%writer%';
select * from Members where address in ('678 Tambaram','012 Sholinganallur');
select * from Members where join_date between '2024-01-01' and '2024-12-30';
select * from Loans where loan_date not between '2023-01-10' and '2023-12-20';
select * from Books where title between 'A Game of Thrones' and 'The Time Machine' order by title;
/*inner join*/
select Loans.loan_id, Books.title, Members.name, Loans.loan_date, Loans.due_date, Loans.return_date
FROM Loans
INNER JOIN Books ON Loans.book_id = Books.book_id
INNER JOIN Members ON Loans.member_id = Members.member_id;
/*left join*/
select Books.title, Authors.name AS author_name
FROM Books
LEFT JOIN Authors ON Books.author_id = Authors.author_id;
/*right join*/
select Categories.category_name, Books.title
FROM Books
RIGHT JOIN Categories ON Books.category_id = Categories.category_id;
/*Round() function
SELECT ROUND(AVG(age)) AS rounded_avg_age FROM Members;*/
SELECT ROUND(AVG(age), 1) AS Rounded_Avg_Age FROM Members;
SELECT TRUNCATE(AVG(age), 1) AS Truncated_Avg_Age FROM Members;
SELECT * FROM Books
WHERE MOD(book_id, 2) = 1;
/*Adding 10 days to the loan_date*/
SELECT loan_id, book_id, member_id, loan_date, DATE_ADD(loan_date, INTERVAL 10 DAY) AS Extended_Loan_Date FROM Loans;
/*Subtracting 5 days from the due_date*/
SELECT loan_id, book_id, member_id, due_date, DATE_SUB(due_date, INTERVAL 5 DAY) AS Shortened_Due_Date FROM Loans;
/*difference between loan_date and return_date*/
SELECT loan_id, book_id, member_id, DATEDIFF(return_date, loan_date) AS Loan_Duration FROM Loans
WHERE return_date IS NOT NULL;
/*date arithmetic*/
SELECT loan_id, book_id, member_id, loan_date, due_date, return_date
FROM Loans
WHERE DATEDIFF(CURDATE(), due_date) > 7 AND return_date IS NULL;
/*extracting date parts*/
SELECT member_id, name, join_date, YEAR(join_date) AS Join_Year, MONTH(join_date) AS Join_Month FROM Members;
/*union operator*/
SELECT name, 'Author' AS Role FROM Authors
UNION
SELECT name, 'Member' AS Role FROM Members;
/*union all*/
SELECT name, 'Author' AS Role FROM Authors
UNION ALL
SELECT name, 'Member' AS Role FROM Members;
/*group by*/
SELECT age, COUNT(*) AS Member_Count FROM Members
GROUP BY age;
/*having clause*/
SELECT age, COUNT(*) AS Member_Count FROM Members
GROUP BY age
HAVING Member_Count > 1;
/*exists*/
SELECT title FROM Books
WHERE EXISTS (
    SELECT 1 FROM Loans
    WHERE Loans.book_id = Books.book_id
);
/*any and all*/
SELECT * FROM Books
WHERE book_id = ANY (
    SELECT book_id FROM Loans
);
/*insert into */
INSERT INTO Members (name, email, phone, address, age, join_date)
VALUES ('John Daniel', 'john.doe@example.com', '9876543210', '456 ambattur', 30, '2023-11-01');
/*ifnull*/
SELECT title, IFNULL(published_date, '1900-01-01') AS published_date FROM Books;
/*is null*/
SELECT * FROM Loans WHERE return_date IS NULL;
/*single row subquery*/
SELECT * FROM Books
WHERE category_id = (SELECT category_id FROM Books WHERE title = 'Harry Potter and the Sorcerer''s Stone');
/*multi row subquery*/
SELECT * FROM Members
WHERE member_id IN (SELECT member_id FROM Loans WHERE book_id IN (1, 2, 3));
/*multi column subquery*/
SELECT loan_id, book_id, member_id FROM Loans AS l1
WHERE (book_id, member_id) IN (SELECT book_id, member_id FROM Loans AS l2 WHERE l2.loan_id = l1.loan_id);
/*subquery with select statement*/
SELECT title FROM Books
WHERE book_id = (SELECT book_id FROM Loans GROUP BY book_id ORDER BY COUNT(*) DESC LIMIT 1);
/*cur date*/
SELECT * FROM Loans
WHERE due_date = CURDATE();
/*extract*/
SELECT title, EXTRACT(YEAR FROM published_date) AS published_year
FROM Books;
DELIMITER //

CREATE PROCEDURE BorrowedByMember (IN member_email VARCHAR(255))
BEGIN
    SELECT b.title, b.ISBN_number, l.loan_date, l.due_date
    FROM Books b
    JOIN Loans l ON b.book_id = l.book_id
    JOIN Members m ON l.member_id = m.member_id
    WHERE m.email = member_email;
END //

DELIMITER ;
CALL BorrowedByMember('arun@example.com');

SELECT title, REGEXP_REPLACE(title, 'The', 'A') AS updated_title
FROM Books;
delimiter //
create procedure trisha()
begin
select * from books;
end //

call trisha();
drop procedure trisha;
delimiter //
create procedure yoga()
begin
declare total int default 0;
select count(book_id) into total from books;
select total;
end //
call yoga();


delimiter//
create procedure trish (IN myid int)
begin 
   declare total int default 0;
   select AVG(author_id)
   into total from authors
   where author_id=myid;
   select total;
end//
CALL TRISH();














































