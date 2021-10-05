# Var-1

SELECT firstname, surname, joindate FROM cd.members 
WHERE joindate = (SELECT MAX(joindate) FROM cd.members);

# Var-2
SELECT firstname, surname, MAX(joindate)
        FROM cd.members

# Var-3
SELECT firstname, surname, joindate
	FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

'''
In the suggested approach above, you use a subquery to find out what the most recent joindate is. 
This subquery returns a scalar table - that is, a table with a single column and a single row. 
Since we have just a single value, we can substitute the subquery anywhere we might put a single constant value. 
In this case, we use it to complete the WHERE clause of a query to find a given member.
Unfortunately, this doesnt work. 
The MAX function doesn not restrict rows like the WHERE clause does - it simply takes in a bunch of values and returns the biggest one. 
The database is then left wondering how to pair up a long list of names with the single join date that is come out of the max function, and fails. 
Instead, you are left having to say find me the row(s) which have a join date that is the same as the maximum join date.

As mentioned by the hint, there is other ways to get this job done - one example is below. 
In this approach, rather than explicitly finding out what the last joined date is, we simply order our members table in descending order of join date, 
and pick off the first one. Note that this approach does not cover the extremely unlikely eventuality of two people joining at the exact same time.
'''
