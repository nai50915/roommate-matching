-- Create the database
create database if not exists cs4370_roommate_platform;

-- Use the database
use cs4370_roommate_platform;

-- Create the user table
create table if not exists user ( 
    userId int auto_increment,
    username varchar(255) not null, 
    password varchar(255) not null,
    firstName varchar(255) not null,
    lastName varchar(255) not null, 
    description text,
    imageUrl varchar(255),
    primary key (userId), 
    unique (username), 
    constraint userName_min_length check (char_length(trim(userName)) >= 2),
    constraint firstName_min_length check (char_length(trim(firstName)) >= 2), 
    constraint lastName_min_length check (char_length(trim(lastName)) >= 2)
);

-- Create the review table
create table if not exists review (
	reviewId int auto_increment,
	reviewerId int not null,    /* who wrote the review */
	revieweeId int not null,    /* who the review is about */
	content text not null,
	ratingValue int not null,
	createdAt timestamp default current_timestamp,
	primary key (reviewId),
	foreign key (reviewerId) references user(userId) on delete cascade,
	foreign key (revieweeId) references user(userId) on delete cascade
);

-- Create the vote table
create table if not exists vote (
	userId int not null,
	reviewId int not null, 
	type ENUM('upvote', 'downvote'),
	primary key (userId, reviewId),
	foreign key (reviewId) references review(reviewId) on delete cascade,
    foreign key (userId) references user(userId) on delete cascade
);

-- Create the tag table
create table if not exists tag (
	tagId int auto_increment,
	tagName varchar(255) not null, 
	primary key(tagId)
);

-- Create the reviewTag table
create table if not exists reviewTag (
	tagId int, 
	reviewId int not null, 
	primary key (tagId, reviewId), 
    foreign key (tagId) references tag(tagId) on delete cascade,
    foreign key (reviewId) references review(reviewId) on delete cascade
); 

-- Create the userAttributes table
create table if not exists userAttributes (
	attrId int, 
	userId int not null, 
	primary key (userId, attrId), 
	foreign key (userId) references user(userId) on delete cascade,
	foreign key (attrId) references allUserAttributes(attrId) on delete cascade
);

-- create the allUserAttributes table
create table if not exists allUserAttributes (
    attrId int auto_increment, 
    name varchar(200) not null unique, 
    category varchar(50), 
    primary key (attrId)
    -- category varchar(50), 
);

-- Create the match table
create table if not exists matches (
	userA int not null, 
	userB int not null, 
	tags_match int,
	primary key (userA, userB),
	check (userA < userB), 
	foreign key (userA) references user(userId) on delete cascade, 
	foreign key (userB) references user(userId) on delete cascade
);

-- Create the pastRoommate table
create table if not exists pastRoommate (
	userA int not null,
	userB int not null,
	primary key (userA, userB),
	check (userA < userB), 
	foreign key (userA) references user(userId) on delete cascade, 
	foreign key (userB) references user(userId) on delete cascade
); 
