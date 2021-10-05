SELECT name, 
CASE 
    WHEN (monthlymaintenance > 100) THEN
	    'expensive'
	ELSE
	    'cheap'
	END AS cost
FROM cd.facilities;

'''
This exercise contains a few new concepts. 
The first is the fact that were doing computation in the area of the query between SELECT and FROM. 
Previously weve only used this to select columns that we want to return,
but you can put anything in here that will produce a single result per returned row - including subqueries.

The second new concept is the CASE statement itself. CASE is effectively like if/switch statements in other languages,
with a form as shown in the query. To add a middling option, we would simply insert another when...then section.

Finally, there's the AS operator. This is simply used to label columns or expressions, 
to make them display more nicely or to make them easier to reference when used as part of a subquery.
'''
