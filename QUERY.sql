
-- Write a query to calculate the average engagement 
-- rate (average of likes, shares, and comments) for each post.

SELECT PostID, Likes, Shares, Comments,
((Likes + Shares + Comments) / 3) AS EngagementRate
FROM Posts;


-- Write a query to find the top 5 posts based on total 
-- interac5ons (likes + shares + comments).

SELECT PostID,PostContent,Likes,Shares,Comments,
(Likes + Shares + Comments) AS TotalInteraction
FROM Posts
ORDER BY TotalInteraction DESC
LIMIT 5;
 
 
--  Write a query to find the total number of posts 
-- made by each user

SELECT UserID, COUNT(*) AS TotalPosts
FROM Posts
GROUP BY UserID;


-- Write a query to find the top 3 posts with the most 
-- likes

SELECT PostID, PostContent, Likes
FROM Posts
ORDER BY Likes DESC
LIMIT 3;

--  Write a query to calculate the average number of 
-- comments per post

SELECT AVG(Comments) AS AvgComment
FROM Posts; 


-- Write a query to find all posts made in June 2017.

SELECT * FROM Posts
WHERE YEAR(PostDate) = 2017 AND MONTH(PostDate) = 6;

-- Write a query to find the top 3 users who have 
-- made the most comments

SELECT UserID, COUNT(*) AS TotalComments
FROM Comments
GROUP BY UserID
ORDER BY TotalComments DESC
LIMIT 3;