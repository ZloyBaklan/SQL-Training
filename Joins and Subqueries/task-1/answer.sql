SELECT book.starttime FROM cd.bookings book
INNER JOIN cd.members members ON members.memid = book.memid
WHERE members.firstname='David' AND members.surname='Farrell';

# Variant 2

SELECT book.starttime FROM cd.bookings book, cd.members members
WHERE members.firstname='David' AND members.surname='Farrell' AND members.memid = book.memid;
'''
The most commonly used kind of join is the INNER JOIN. 
What this does is combine two tables based on a join expression - in this case, 
for each member id in the members table, 
we are looking for matching values in the bookings table. Where we find a match, 
a row combining the values for each table is returned. 
Note that weve given each table an alias (bks and mems). 
This is used for two reasons: firstly, it is convenient, 
and secondly we might join to the same table several times, 
requiring us to distinguish between columns from each different time the table was joined in.

Lets ignore our select and where clauses for now, 
and focus on what the FROM statement produces. 
In all our previous examples, FROM has just been a simple table. 
What is it now? Another table! 
This time, it is produced as a composite of bookings and members.

For each member in the members table, the join has found all the matching member ids in the bookings table. 
For each match, it is then produced a row combining the row from the members table, and the row from the bookings table.

Obviously, this is too much information on its own, 
and any useful question will want to filter it down. 
In our query, we use the start of the SELECT clause to pick columns, and the WHERE clause to pick rows.

That is all we need to find Davids bookings! In general, I encourage you to remember that the output of the FROM clause is essentially 
one big table that you then filter information out of. This may sound inefficient - but do not worry, 
under the covers the DB will be behaving much more intelligently.

One final note: there is two different syntaxes for inner joins. Ive shown you the one I prefer, 
that I find more consistent with other join types.
'''
