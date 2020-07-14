SELECT CONCAT(author_fname, ' ', author_lname) AS 'full name' FROM books;

SELECT CONCAT_WS('-', title, author_fname, author_lname) AS 'full info' FROM books;

SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;

SELECT CONCAT(SUBSTRING(title, 1, 10), '...' ) AS 'short title' FROM books;

SELECT REPLACE(title, 'e', '3') AS 'replaced titles' FROM books;

SELECT REVERSE(title) AS 'reversed title' FROM books;

SELECT author_lname, CHAR_LENGTH(author_lname) as 'lname length' FROM books;

SELECT UPPER(author_lname) AS 'upper lname', LOWER(author_lname) AS 'lower lname' FROM books;