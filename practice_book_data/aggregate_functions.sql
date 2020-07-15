SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author_fname) from books;

SELECT COUNT(DISTINCT author_lname, author_fname) from books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';

SELECT author_fname, author_lname FROM books GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, COUNT(*) FROM books GROUP BY author_fname, author_lname;

SELECT released_year, COUNT(*) FROM books GROUP BY released_year;

SELECT CONCAT('In ', released_year, ' ', COUNT(*), ' book(s) released' ) AS 'year' 
FROM books GROUP BY released_year;

SELECT MIN(released_year) FROM books;

SELECT MIN(pages) FROM books;

SELECT MAX(pages) FROM books;

SELECT title FROM books 
WHERE pages = (SELECT MAX(pages) FROM books);    #    0.09 sec 

SELECT title FROM books
ORDER BY pages DESC LIMIT 1;    #    0.00 sec 

SELECT author_fname, author_lname, MIN(released_year) FROM books
GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, MAX(pages) FROM books
GROUP BY author_fname, author_lname;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'author', 
        MAX(pages) AS 'max book length' FROM books
        GROUP BY author_fname, author_lname;

SELECT SUM(pages) FROM books;

SELECT author_fname, author_lname, SUM(pages) FROM books
GROUP BY author_lname, author_fname;

SELECT AVG(released_year) FROM books;

SELECT released_year, AVG(stock_quantity) FROM books GROUP BY released_year;