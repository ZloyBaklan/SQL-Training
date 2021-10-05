SELECT*FROM cd.facilities WHERE facid IN (1,5)

'''
The obvious answer to this question is to use a WHERE clause that looks like where facid = 1 or facid = 5. 
An alternative that is easier with large numbers of possible matches is the IN operator. 
The IN operator takes a list of possible values, and matches them against (in this case) the facid. 
If one of the values matches, the where clause is true for that row, and the row is returned.

The IN operator is a good early demonstrator of the elegance of the relational model. 
The argument it takes is not just a list of values - its actually a table with a single column. 
Since queries also return tables, if you create a query that returns a single column, you can feed those results into an IN operator. 
'''
