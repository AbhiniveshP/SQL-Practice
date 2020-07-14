SELECT REVERSE(UPPER("Why does my cat look at me with such hatred?")) AS 'reversed upper str';

# 'I-like-cats';

SELECT REPLACE(title, ' ', '->') AS 'pointered title' FROM books;

SELECT UPPER(
            CONCAT(author_fname, ' ', author_lname)
            ) AS 'full name in caps'
FROM books;

SELECT CONCAT(
            title, ' was released in ', released_year
            ) AS 'blurb'
FROM books;

SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

SELECT 
    CONCAT(SUBSTR(title, 1, 10), '...') as 'short title',
    CONCAT(author_lname, ',', author_fname) as 'author',
    CONCAT(stock_quantity, ' in stock') as 'quantity'
FROM books;
