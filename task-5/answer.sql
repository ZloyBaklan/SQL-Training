SELECT*FROM cd.facilities WHERE name LIKE '%Tennis%';

'''
SQLs LIKE operator provides simple pattern matching on strings. 
Its pretty much universally implemented, and is nice and simple to use - 
it just takes a string with the % character matching any string, and _ matching any single character.
In this case, were looking for names containing the word Tennis, so putting a % on either side fits the bill.

Theres other ways to accomplish this task: 
Postgres supports regular expressions with the ~ operator, for example. 
Use whatever makes you feel comfortable, but do be aware that the LIKE operator is much more portable between systems.
'''
