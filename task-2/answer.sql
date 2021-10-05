SELECT name, membercost FROM cd.facilities

'''
For this question, we need to specify the columns that we want. 
We can do that with a simple comma-delimited list of column names specified to the select statement.
All the database does is look at the columns available in the FROM clause, 
and return the ones we asked for.

Generally speaking, for non-throwaway queries it's considered desirable to specify 
the names of the columns you want in your queries rather than using *. 
This is because your application might not be able to cope if more columns get added into the table.
'''
