-- AttributeService.java
SELECT attrId, name, category FROM allUserAttributes;
SELECT attrId FROM userAttributes WHERE userId = ?;
DELETE FROM userAttributes WHERE userId = ?;
INSERT INTO userAttributes (userId, attrId) VALUES (?, ?);

-- FindPastRoommateService.java
SELECT userId FROM user WHERE userId != ? AND userId NOT IN (
  SELECT userB FROM pastRoommate WHERE userA = ?  UNION 
  SELECT userA FROM pastRoommate WHERE userB = ?);

-- MatchService.java
SELECT userId FROM user WHERE userId != ?;
INSERT INTO matches (userA, userB, tags_match) VALUES (?, ?, ?);
SELECT COUNT(*) FROM matches WHERE userA = ? AND userB = ?;

-- PastRoommateService.java
SELECT COUNT(*) FROM matches WHERE userA = ? AND userB = ?;
SELECT u.userId FROM user u JOIN pastRoommate pr 
  ON (pr.userA = ? AND u.userId = pr.userB)
  OR (pr.userB = ? AND u.userId = pr.userA);

-- ProfileService.java
SELECT username, firstName, lastName, description, imageUrl 
  FROM user WHERE userId = ?;
SELECT a.attrId, a.name, a.category FROM userAttributes ua 
  JOIN allUserAttributes a ON ua.attrId = a.attrId 
  WHERE ua.userId = ?;
SELECT DISTINCT t.tagName FROM user u, tag t, reviewTag tg, review r
  WHERE userId = ? AND u.userId = r.revieweeId 
  AND r.reviewId = tg.reviewId AND tg.tagId = t.tagId;
SELECT AVG(ratingValue) FROM review WHERE revieweeId = ?;
SELECT r.reviewId AS reviewId, ee.firstName AS revieweeFirstName, 
  er.firstName AS reviewerFirstName, er.imageUrl AS reviewerImg,
  r.content AS content 
  FROM review r JOIN user er ON r.reviewerId = er.userId 
  JOIN user ee ON r.revieweeId = ee.userId 
  WHERE r.revieweeId = ? ORDER BY r.createdAt DESC;

-- ReviewService.java
INSERT INTO review (reviewerId, revieweeId, content, ratingValue) 
  VALUES (?, ?, ?, ?);
INSERT INTO reviewTag (tagId, reviewId) 
  VALUES ((SELECT tagId FROM tag WHERE tagName = ?), ?);
SELECT * FROM review ORDER BY createdAt DESC;
SELECT t.tagName FROM reviewTag r, tag t WHERE r.reviewId = ? 
  AND r.tagId = t.tagId;

-- UserService.java 
select * from user where username = ?
insert into user 
  (username, password, firstName, lastName, description, imageUrl) 
  values (?, ?, ?, ?, ?, ?);
SELECT * FROM user WHERE firstName = ? AND lastName = ?;

-- VoteService.java
INSERT INTO vote (userId, reviewId, type) VALUES (?, ?, 'upvote');
INSERT INTO vote (userId, reviewId, type) VALUES (?, ?, 'downvote');
DELETE FROM vote WHERE userId = ? AND reviewId = ?;
SELECT type FROM vote WHERE userId = ? AND reviewId = ?;
SELECT COUNT(*) FROM vote WHERE reviewId = ? and type = 'upvote';
SELECT COUNT(*) FROM vote WHERE reviewId = ? and type = 'downvote';
