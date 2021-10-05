SELECT DISTINCT surname FROM cd.members ORDER BY surname LIMIT 10;

'''
There's three new concepts here, but they're all pretty simple.

Specifying DISTINCT after SELECT removes duplicate rows from the result set. 
Note that this applies to rows: if row A has multiple columns, 
row B is only equal to it if the values in all columns are the same.
As a general rule, dont use DISTINCT in a willy-nilly fashion - 
its not free to remove duplicates from large query result sets, so do it as-needed.
Specifying ORDER BY (after the FROM and WHERE clauses, 
near the end of the query) allows results to be ordered by a column or set of columns (comma separated).
The LIMIT keyword allows you to limit the number of results retrieved. 
This is useful for getting results a page at a time, and can be combined with the OFFSET keyword to get following pages. 
This is the same approach used by MySQL and is very convenient - you may, unfortunately, 
find that this process is a little more complicated in other DBs.
'''
