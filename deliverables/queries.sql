-- AttributeService.java                             
/*
  Retrieves all the attributes from database
  Then uses info to build Attribute object
  URL: localhost:8081/Profile/Attributes
*/
SELECT attrId, name, category 
  FROM allUserAttributes;

/*
  Retrieves IDs of the attributes the user selected  
  URL: localhost:8081/Profile/Attributes
*/
SELECT attrId 
  FROM userAttributes 
  WHERE userId = ?;

/*
  Deletes the user's attributes to prepare for 
  updating their attributes 
  URL: localhost:8081/Profile/Attributes
*/
DELETE 
  FROM userAttributes 
  WHERE userId = ?;

/*
  Inserts all previously selected and newly selected
  attributes, allows user to update their attributes
  URL: localhost:8081/Profile/Attributes
*/
INSERT INTO userAttributes (userId, attrId) 
  VALUES (?, ?);


-- FindPastRoommateService.java
/*
  Retrieves all users, not including the logged-in user
  and logged-in users already added past roommates; gives 
  user valid list of users to add as past roommates 
  URL: localhost:8081/Find-Past-Roommate 

*/
SELECT userId 
  FROM user 
  WHERE userId != ? 
    AND userId NOT IN (
      SELECT userB 
      FROM pastRoommate 
      WHERE userA = ?  
    UNION 
      SELECT userA 
      FROM pastRoommate 
      WHERE userB = ?);


-- MatchService.java
/*
  Retrieves list of all users, not including the 
  logged-in user, so the user can potentially match
  with anyone 
  URL: localhost:8081/Matches
*/
SELECT userId 
  FROM user 
  WHERE userId != ?;

/*
  Adds a match to the database if user has more than 50%
  in common with the other user 
  URL: localhost:8081/Matches
*/
INSERT INTO matches (userA, userB, tags_match) 
  VALUES (?, ?, ?);

/*
  Used to determine if two users are a match 
  If they are, this returns a value > 0 
  URL: localhost:8081/Matches
*/
SELECT COUNT(*) 
  FROM matches 
  WHERE userA = ? 
    AND userB = ?;


-- PastRoommateService.java
/*
  Establishes a past-roommate relationship between
  two users after the logged-in user adds another user
  URL: localhost:8081/Find-Past-Roommate/addPastRoommate
*/
INSERT INTO pastRoommate (userA, userB) 
  VALUES (?, ?);

/*
  Gets all past-roommates of the logged-in user to 
  populate the past-roommate page 
  URL: localhost:8081/Your-Past-Roommate
*/
SELECT u.userId 
  FROM user u JOIN pastRoommate pr 
  ON (pr.userA = ? AND u.userId = pr.userB)
  OR (pr.userB = ? AND u.userId = pr.userA);


-- ProfileService.java
/*
  Retrieve user information needed to create a user object
  Versatile and used in lots of different places
  First developed to populate the profile section for a user 
  URL: localhost:8081/Profile
*/
SELECT username, firstName, lastName, description, imageUrl 
  FROM user 
  WHERE userId = ?;

/*
  Retrieves user attributes to populate the attribute section
  of the user's profile 
  URL: localhost:8081/Profile
*/
SELECT a.attrId, a.name, a.category 
  FROM userAttributes ua 
  JOIN allUserAttributes a ON ua.attrId = a.attrId 
  WHERE ua.userId = ?;

/*
  Retrieves user tags from reviews written about them to 
  populate the user tag section of the user's profile 
  URL: localhost:8081/Profile
*/
SELECT DISTINCT t.tagName 
  FROM user u, tag t, reviewTag tg, review r
  WHERE userId = ? 
    AND u.userId = r.revieweeId 
    AND r.reviewId = tg.reviewId 
    AND tg.tagId = t.tagId;

/*
  Calculates the user's overall rating based on the different
  ratings from different reviews
  URL: localhost:8081/Profile
*/
SELECT AVG(ratingValue) 
  FROM review 
  WHERE revieweeId = ?;

/*
  Retrieves all the reviews made for a particular user to 
  populate the user's profile with reviews written about them 
  URL: localhost:8081/Profile
*/
SELECT r.reviewId AS reviewId, ee.firstName AS revieweeFirstName, 
  er.firstName AS reviewerFirstName, er.imageUrl AS reviewerImg,
  r.content AS content 
  FROM review r JOIN user er ON r.reviewerId = er.userId 
  JOIN user ee ON r.revieweeId = ee.userId 
  WHERE r.revieweeId = ? 
  ORDER BY r.createdAt DESC;


-- ReviewService.java
/*
  Create a review in the database after a user submits a review form
  URL: localhost:8081/Review
*/
INSERT INTO review (reviewerId, revieweeId, content, ratingValue) 
  VALUES (?, ?, ?, ?);

/*
  Get all the tags associated with a review and update the reviewTag 
  table; tags are shown with the associated review
  URL: localhost:8081/Review
*/
INSERT INTO reviewTag (tagId, reviewId) 
  VALUES ((
    SELECT tagId 
    FROM tag 
    WHERE tagName = ?), ?);

/*
  Gets all the reviews ordered from most recent to latest to populate
  the feed with most recent reviews first 
  URL: localhost:8081/Feed
*/
SELECT * 
  FROM review 
  ORDER BY createdAt DESC;

/*
  Gets the tags associated with a review which is used as a helper for
  getting all the reviews to populate the feed
  URL: localhost:8081/Feed
*/
SELECT t.tagName 
  FROM reviewTag r, tag t 
  WHERE r.reviewId = ? 
    AND r.tagId = t.tagId;


-- UserService.java 
/*
  Gets the user information associated with username used to log-in to 
  see if the user is valid to access the platform 
  URL: localhost:8081/login
*/
SELECT * 
  FROM user 
  WHERE username = ?;

/*
  Registers the user into the platform 
  URL: localhost:8081/register
*/
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) 
  values (?, ?, ?, ?, ?, ?);

/*
  Finds the user information based on their first and last name 
  Used for submitting a review where the reviewee is determined by their
  first and last name 
  URL: localhost:8081/Review
*/
SELECT * 
  FROM user 
  WHERE firstName = ? 
    AND lastName = ?;


-- VoteService.java
/*
  Inserts an upvote when the user upvotes a post 
  URL: localhost:8081/Profile/Vote/{reviewId}/{isUpVote}
       localhost:8081/Feed/Vote/{reviewId}/{isUpVote}
*/
INSERT INTO vote (userId, reviewId, type) 
  VALUES (?, ?, 'upvote');

/*
  Inserts a downvote when the user downvotes a post
  URL: localhost:8081/Profile/Vote/{reviewId}/{isUpVote}
       localhost:8081/Feed/Vote/{reviewId}/{isUpVote}
*/
INSERT INTO vote (userId, reviewId, type) 
  VALUES (?, ?, 'downvote');

/*
  Removes a vote amde by the user; used for when the user 
  switches their vote or when the user doubleclicks to remove 
  their previously casted vote 
  URL: localhost:8081/Profile/Vote/{reviewId}/{isUpVote}
       localhost:8081/Feed/Vote/{reviewId}/{isUpVote}
*/
DELETE 
  FROM vote 
  WHERE userId = ? 
    AND reviewId = ?;

/*
  Determines if the user has voted and tells what type of vote
  This is used as a helper function before casting votes 
  URL: localhost:8081/Profile/Vote/{reviewId}/{isUpVote}
       localhost:8081/Feed/Vote/{reviewId}/{isUpVote}
*/
SELECT type 
  FROM vote 
  WHERE userId = ? 
    AND reviewId = ?;

/*
  Counts all the upvotes for a review to display on the review 
  URL: localhost:8081/Profile/Vote/{reviewId}/{isUpVote}
       localhost:8081/Feed/Vote/{reviewId}/{isUpVote}
*/
SELECT COUNT(*) 
  FROM vote 
  WHERE reviewId = ? 
    AND type = 'upvote';

/*
  Counts all the downvotes for a review to display on the review 
  URL: localhost:8081/Profile/Vote/{reviewId}/{isUpVote}
       localhost:8081/Feed/Vote/{reviewId}/{isUpVote}
*/
SELECT COUNT(*) 
  FROM vote 
  WHERE reviewId = ? 
    AND type = 'downvote';
