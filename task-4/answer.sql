SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities WHERE membercost = 35 AND monthlymaintenance = 3000;

'''
The WHERE clause allows us to filter for the rows were interested in - in this case, 
those with a membercost of more than zero, and less than 1/50th of the monthly maintenance cost. 
As you can see, the massage rooms are very expensive to run thanks to staffing costs!

When we want to test for two or more conditions, we use AND to combine them. 
We can, as you might expect, use OR to test whether either of a pair of conditions is true.

You might have noticed that this is our first query that combines a WHERE clause with selecting specific columns. 
You can see in the image below the effect of this: 
the intersection of the selected columns and the selected rows gives us the data to return.
This may not seem too interesting now, but as we add in more complex operations like joins later, 
you will see the simple elegance of this behaviour.
'''
