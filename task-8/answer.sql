SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01';

'''
This is our first look at SQL timestamps. 
They are formatted in descending order of magnitude: YYYY-MM-DD HH:MM:SS.nnnnnn. 
We can compare them just like we might a unix timestamp, 
although getting the differences between dates is a little more involved (and powerful!). 
In this case, weve just specified the date portion of the timestamp. 
This gets automatically cast by postgres into the full timestamp 2012-09-01 00:00:00.
'''
