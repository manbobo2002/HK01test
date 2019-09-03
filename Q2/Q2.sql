#Q2(a)
select clickstream.objectId, count(*) as "like received",
(SELECT title FROM articles
        WHERE id = clickstream.objectId) AS title
 from clickstream
 group by objectId
 order by count(*) DESC
 LIMIT 10;
 
#Q2(b)
select count(*) from 
(select userId
FROM clickstream
where time = "2017-04-01" and action = "FIRST_INSTALL" group by userID) as query1
inner join
(select userId
FROM clickstream
where time between "2017-04-02" and "2017-04-08" group by userID) as query2
ON query1.userID=query2.userID
