SELECT MAX(joindate) as latest FROM cd.members

'''
This is our first foray into SQLs aggregate functions. 
They are used to extract information about whole groups of rows, 
and allow us to easily ask questions like:

What is the most expensive facility to maintain on a monthly basis?
Who has recommended the most new members?
How much time has each member spent at our facilities?
The MAX aggregate function here is very simple: 
it receives all the possible values for joindate, 
and outputs the one that is biggest. There is a lot more power to aggregate functions, 
which you will come across in future exercises.
'''
