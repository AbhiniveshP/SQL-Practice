SELECT COUNT(*) AS 'total books' FROM books;

SELECT released_year, COUNT(*) AS 'books per year' FROM books GROUP BY released_year;

SELECT SUM(stock_quantity) FROM books;

SELECT author_lname, author_fname, AVG(released_year) FROM books 
GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, pages FROM books
ORDER BY pages DESC LIMIT 1;

SELECT author_fname, author_lname, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT released_year AS 'year',
        COUNT(*) AS '# books',
        AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year;