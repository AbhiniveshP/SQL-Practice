INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
 
 
SELECT title FROM books;

SELECT DISTINCT author_lname FROM books;

SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) AS 'full name' FROM books;

SELECT DISTINCT author_fname, author_lname FROM books;

SELECT author_lname FROM books ORDER BY author_lname;

SELECT author_lname FROM books ORDER BY author_lname DESC;

SELECT author_lname FROM books ORDER BY released_year;

SELECT title, author_lname, author_fname FROM books ORDER BY 2;

SELECT author_fname, author_lname FROM books ORDER BY author_lname, author_fname;

SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 5;

SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 3, 5;

SELECT title, author_fname FROM books
WHERE author_fname LIKE '%da%';

SELECT title, author_fname FROM books
WHERE author_fname LIKE 'da%';

SELECT title, stock_quantity FROM books
WHERE stock_quantity LIKE '____';

SELECT title FROM books
WHERE title LIKE '%\%%';