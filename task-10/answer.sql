SELECT surname FROM cd.members
UNION SELECT name FROM cd.facilities


'''
The UNION operator does what you might expect: 
combines the results of two SQL queries into a single table. 
The caveat is that both results from the two queries must have the same number of columns and compatible data types.

UNION removes duplicate rows, while UNION ALL does not. 
Use UNION ALL by default, unless you care about duplicate results.
'''
