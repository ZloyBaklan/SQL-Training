SELECT * FROM cd.facilities WHERE membercost > 0;

'''
The FROM clause is used to build up a set of candidate rows to read results from. In our examples so far, 
this set of rows has simply been the contents of a table. In future we will explore joining, 
which allows us to create much more interesting candidates.

Once weve built up our set of candidate rows, 
the WHERE clause allows us to filter for the rows were interested in - in this case, 
those with a membercost of more than zero. As you will see in later exercises,
WHERE clauses can have multiple components combined with boolean logic - its possible to, 
for instance, search for facilities with a cost greater than 0 and less than 10.
'''
