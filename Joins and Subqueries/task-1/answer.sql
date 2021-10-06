SELECT book.starttime FROM cd.bookings book
INNER JOIN cd.members members ON members.memid = book.memid
WHERE members.firstname='David' AND members.surname='Farrell';

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
'''
