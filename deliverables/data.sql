----- Predetermined Tags List for tag Table (refer to ddl.sql)
INSERT INTO tag (tagName) VALUES ('Clean');
INSERT INTO tag (tagName) VALUES ('Messy');
INSERT INTO tag (tagName) VALUES ('EB'); 
INSERT INTO tag (tagName) VALUES ('NO');
INSERT INTO tag (tagName) VALUES ('LS'); 
INSERT INTO tag (tagName) VALUES ('Smoker');
INSERT INTO tag (tagName) VALUES ('Drinker');
INSERT INTO tag (tagName) VALUES ('Pets');
INSERT INTO tag (tagName) VALUES ('NP'); 

----- Predetermined Attributes List for allUserAttributes Table (refer to ddl.sql)
-- Year in School
INSERT INTO allUserAttributes (name) VALUES
  ('freshman'),
  ('sophomore'),
  ('junior'),
  ('senior'),
  ('graduate');

-- Studying Scopes / Majors
INSERT INTO allUserAttributes (name) VALUES
  ('business'),
  ('science'),
  ('public affairs'),
  ('medicine'),
  ('engineering'),
  ('education'),
  ('other'),
  ('law');

-- Cleanliness Habits
INSERT INTO allUserAttributes (name) VALUES
  ('does not mind mess'), 
  ('can be a little cluttered'),
  ('cleanliness obsessed');

-- Productivity / Schedule
INSERT INTO allUserAttributes (name) VALUES
  ('early bird'),
  ('night owl'),
  ('needs quiet time to focus');

-- Religion / Spirituality
INSERT INTO allUserAttributes (name) VALUES
  ('religious'),
  ('not religious'),
  ('muslim'),
  ('christian'),
  ('jewish'),
  ('polytheist');

-- Dating Habits
INSERT INTO allUserAttributes (name) VALUES
  ('currently dating'),
  ('expect overnight guests'),
  ('single pringle'),
  ('has a partner');

-- Social Habits
INSERT INTO allUserAttributes (name) VALUES
  ('drinks'),
  ('smokes'),
  ('dry'), 
  ('no drinking or smoking tolerated'),
  ('likes to host');

-- Pets
INSERT INTO allUserAttributes (name) VALUES
  ('has a pet'),
  ('has a cat'),
  ('has a dog'),
  ('plans to get a pet'),
  ('no pets please');

-- setting categories for each description 
UPDATE allUserAttributes SET category = 'year' WHERE name IN ('freshman', 'sophomore', 'junior', 'senior', 'graduate');
UPDATE allUserAttributes SET category = 'studying' WHERE name IN ('business', 'science', 'public affairs', 'education', 'engineering', 'law','medicine', 'other');
UPDATE allUserAttributes SET category = 'pets' WHERE name IN ('has a pet', 'no pets please', 'has a dog', 'has a cat', 'plans to get a pet');
UPDATE allUserAttributes SET category = 'cleanliness' WHERE name IN ('cleanliness obsessed', 'does not mind mess', 'can be a little cluttered');
UPDATE allUserAttributes SET category = 'social' WHERE name IN ('drinks', 'smokes', 'dry', 'no drinking or smoking tolerated', 'likes to host');
UPDATE allUserAttributes SET category = 'productivity' WHERE name IN ('early bird', 'night owl', 'needs quiet time to focus');
UPDATE allUserAttributes SET category = 'spirituality' WHERE name IN ('religious', 'not religious', 'christian', 'muslim', 'jewish', 'polytheist');
UPDATE allUserAttributes SET category = 'dating' WHERE name IN ('has a partner', 'currently dating', 'single pringle', 'expect overnight guests');

----- 1000 Rows of Users Generated Programatically (refer to datasource.txt)
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mtea0', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Tea', 'Hi! My name is Meredith. I am 22 and I am looking for a roommate in Payne 482 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lsauce1', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Sauce', 'Hi! My name is Layla. I am 24 and I am looking for a roommate in Vandiver 795 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gwilliams2', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Williams', 'Hi! My name is Gabriel. I am 18 and I am looking for a roommate in Myers 776 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ibar3', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Bar', 'Hi! My name is Indiana. I am 18 and I am looking for a roommate in The Reserve 299 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rstanley4', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Stanley', 'Hi! My name is Ridwaan. I am 21 and I am looking for a roommate in 1516 162 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bpot5', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Pot', 'Hi! My name is Bella. I am 24 and I am looking for a roommate in The Connections 641 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/93.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cpaper6', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Paper', 'Hi! My name is Caleb. I am 21 and I am looking for a roommate in Myers 731 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lwilliams7', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Williams', 'Hi! My name is Leah. I am 23 and I am looking for a roommate in Mell 745 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntaylor8', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Taylor', 'Hi! My name is Nathan. I am 23 and I am looking for a roommate in Vandiver 104 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('eismail9', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Ismail', 'Hi! My name is Elijah. I am 20 and I am looking for a roommate in The Reserve 543 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aoil10', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Oil', 'Hi! My name is Arafah. I am 18 and I am looking for a roommate in Myers 676 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nstanley11', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Stanley', 'Hi! My name is Nora. I am 24 and I am looking for a roommate in The Connections 216 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/57.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lsarr12', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Sarr', 'Hi! My name is Layla. I am 21 and I am looking for a roommate in The Connections 581 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gtexas13', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Texas', 'Hi! My name is Grace. I am 20 and I am looking for a roommate in Payne 299 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ageorgia14', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Georgia', 'Hi! My name is Aarya. I am 21 and I am looking for a roommate in Mell 723 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker15', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Baker', 'Hi! My name is Belcalis. I am 21 and I am looking for a roommate in Vandiver 360 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lismail16', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Ismail', 'Hi! My name is Leo. I am 22 and I am looking for a roommate in Rooker 575 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/2.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbar17', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Bar', 'Hi! My name is Julian. I am 23 and I am looking for a roommate in Vandiver 430 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('szimbabwe18', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Zimbabwe', 'Hi! My name is Sebastian. I am 23 and I am looking for a roommate in Myers 780 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/37.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssauce19', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Sauce', 'Hi! My name is Sami. I am 18 and I am looking for a roommate in The Reserve 663 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nchicago20', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Chicago', 'Hi! My name is Nadia. I am 20 and I am looking for a roommate in Vandiver 291 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bfat21', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brooklyn', 'Fat', 'Hi! My name is Brooklyn. I am 18 and I am looking for a roommate in The Reserve 358 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spaper22', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Paper', 'Hi! My name is Sophia. I am 20 and I am looking for a roommate in Myers 130 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/78.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mwilliams23', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Williams', 'Hi! My name is Maya. I am 21 and I am looking for a roommate in Rooker 858 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('boil24', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Oil', 'Hi! My name is Binta. I am 23 and I am looking for a roommate in Rooker 684 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('szimbabwe25', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Zimbabwe', 'Hi! My name is Sebastian. I am 24 and I am looking for a roommate in The Reserve 704 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jboil26', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Boil', 'Hi! My name is Justin. I am 19 and I am looking for a roommate in Payne 512 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lextra27', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Extra', 'Hi! My name is Layla. I am 19 and I am looking for a roommate in Sorority House 225 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('csauce28', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Sauce', 'Hi! My name is Chinmay. I am 24 and I am looking for a roommate in Sorority House 637 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwoobles29', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Woobles', 'Hi! My name is Bryson. I am 22 and I am looking for a roommate in The Reserve 117 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('alove30', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Love', 'Hi! My name is Arafah. I am 21 and I am looking for a roommate in Sorority House 647 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sbar31', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Bar', 'Hi! My name is Secret. I am 24 and I am looking for a roommate in Creswell 108 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/9.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('skardashian32', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Kardashian', 'Hi! My name is Sadie. I am 18 and I am looking for a roommate in Creswell 110 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/58.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwilson33', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Wilson', 'Hi! My name is Benen. I am 22 and I am looking for a roommate in Mell 807 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jchicago34', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Chicago', 'Hi! My name is Juancarlos. I am 21 and I am looking for a roommate in Creswell 512 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nkardashian35', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Kardashian', 'Hi! My name is Nora. I am 20 and I am looking for a roommate in Myers 835 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntaylor36', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Taylor', 'Hi! My name is Netra. I am 21 and I am looking for a roommate in Rooker 778 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jmoore37', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Moore', 'Hi! My name is Juancarlos. I am 19 and I am looking for a roommate in Payne 654 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbrown38', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Brown', 'Hi! My name is Brock. I am 20 and I am looking for a roommate in Creswell 630 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hwilson39', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Wilson', 'Hi! My name is Hunter. I am 24 and I am looking for a roommate in The Connections 368 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/83.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia40', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brooklyn', 'Georgia', 'Hi! My name is Brooklyn. I am 24 and I am looking for a roommate in Mell 890 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mmiller41', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Miller', 'Hi! My name is Malaysia. I am 19 and I am looking for a roommate in 1516 706 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('atea42', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Tea', 'Hi! My name is Aaron. I am 21 and I am looking for a roommate in Vandiver 500 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/43.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ktea43', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Tea', 'Hi! My name is Kimberly. I am 20 and I am looking for a roommate in 1516 658 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hismail44', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Ismail', 'Hi! My name is Hadiza. I am 24 and I am looking for a roommate in Mell 490 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sismail45', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Ismail', 'Hi! My name is Stella. I am 20 and I am looking for a roommate in Mell 317 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmirror46', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Mirror', 'Hi! My name is Binta. I am 22 and I am looking for a roommate in Rooker 763 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ajohnson47', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Johnson', 'Hi! My name is Amara. I am 22 and I am looking for a roommate in The Connections 876 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/75.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stea48', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Tea', 'Hi! My name is Stella. I am 21 and I am looking for a roommate in 1516 703 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/66.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nfat49', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Fat', 'Hi! My name is Natalia. I am 24 and I am looking for a roommate in Rooker 791 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/17.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('staylor50', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Taylor', 'Hi! My name is Sophia. I am 21 and I am looking for a roommate in Mell 435 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/2.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wmiller51', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Miller', 'Hi! My name is William. I am 24 and I am looking for a roommate in 1516 388 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/94.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jwilson52', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Wilson', 'Hi! My name is Justin. I am 19 and I am looking for a roommate in Rooker 422 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/94.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mtravis53', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Travis', 'Hi! My name is Meredith. I am 20 and I am looking for a roommate in Mell 174 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swoobles54', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Woobles', 'Hi! My name is Sami. I am 18 and I am looking for a roommate in Myers 728 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mamin55', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Amin', 'Hi! My name is Malaysia. I am 21 and I am looking for a roommate in Vandiver 786 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lismail56', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Ismail', 'Hi! My name is Leah. I am 22 and I am looking for a roommate in Vandiver 806 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jsauce57', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Sauce', 'Hi! My name is Justin. I am 21 and I am looking for a roommate in Mell 427 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/14.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('choney58', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Honey', 'Hi! My name is Chinmay. I am 24 and I am looking for a roommate in Vandiver 768 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cgeorgia59', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Georgia', 'Hi! My name is Chinmay. I am 24 and I am looking for a roommate in Vandiver 736 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hboil60', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Boil', 'Hi! My name is Hadiza. I am 19 and I am looking for a roommate in Rooker 710 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jismail61', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Ismail', 'Hi! My name is Julian. I am 23 and I am looking for a roommate in Rooker 182 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/44.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vhoney62', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Honey', 'Hi! My name is Victoria. I am 23 and I am looking for a roommate in Sorority House 465 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bsarr63', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Sarr', 'Hi! My name is Burgers. I am 23 and I am looking for a roommate in Payne 424 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jwilson64', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Wilson', 'Hi! My name is Juancarlos. I am 19 and I am looking for a roommate in Sorority House 335 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwoobles65', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Woobles', 'Hi! My name is Bella. I am 23 and I am looking for a roommate in Vandiver 891 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('malabama66', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Alabama', 'Hi! My name is Maya. I am 22 and I am looking for a roommate in 1516 216 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hpuccini67', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Puccini', 'Hi! My name is Hunter. I am 18 and I am looking for a roommate in Mell 100 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/87.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tmirror68', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Mirror', 'Hi! My name is Trey. I am 20 and I am looking for a roommate in Mell 142 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spaper69', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Paper', 'Hi! My name is Sebastian. I am 23 and I am looking for a roommate in 1516 826 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('joil70', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Oil', 'Hi! My name is Juancarlos. I am 18 and I am looking for a roommate in Vandiver 866 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smiller71', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Miller', 'Hi! My name is Sami. I am 21 and I am looking for a roommate in Creswell 237 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('npaper72', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Paper', 'Hi! My name is Nadia. I am 23 and I am looking for a roommate in Mell 884 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/66.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aclass73', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Class', 'Hi! My name is Arafah. I am 21 and I am looking for a roommate in Myers 553 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mtaylor74', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Taylor', 'Hi! My name is Miles. I am 18 and I am looking for a roommate in Rooker 354 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/86.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dpuccini75', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Puccini', 'Hi! My name is Diana. I am 20 and I am looking for a roommate in Creswell 764 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('msmith76', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Smith', 'Hi! My name is Malaysia. I am 21 and I am looking for a roommate in Sorority House 390 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('csmith77', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Smith', 'Hi! My name is Chloe. I am 22 and I am looking for a roommate in Sorority House 755 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('owoobles78', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Woobles', 'Hi! My name is Onika. I am 24 and I am looking for a roommate in Payne 161 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nmoore79', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Moore', 'Hi! My name is Netra. I am 21 and I am looking for a roommate in Sorority House 569 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jlove80', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Love', 'Hi! My name is Justin. I am 22 and I am looking for a roommate in Payne 116 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/66.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stravis81', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Travis', 'Hi! My name is Stella. I am 21 and I am looking for a roommate in Mell 807 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rjohnson82', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Johnson', 'Hi! My name is Ruby. I am 23 and I am looking for a roommate in 1516 131 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spuccini83', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Puccini', 'Hi! My name is Sebastian. I am 21 and I am looking for a roommate in Creswell 144 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cstanley84', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Stanley', 'Hi! My name is Caleb. I am 23 and I am looking for a roommate in Rooker 246 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ctravis85', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Travis', 'Hi! My name is Corella. I am 18 and I am looking for a roommate in Myers 503 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cchicago86', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Chicago', 'Hi! My name is Corella. I am 21 and I am looking for a roommate in Mell 515 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntea87', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Tea', 'Hi! My name is Nathan. I am 19 and I am looking for a roommate in Payne 391 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mpuccini88', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Puccini', 'Hi! My name is Marcus. I am 23 and I am looking for a roommate in Myers 438 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ldavis89', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Davis', 'Hi! My name is Layla. I am 19 and I am looking for a roommate in Creswell 486 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mwilliams90', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Williams', 'Hi! My name is Miles. I am 23 and I am looking for a roommate in Payne 474 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/75.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gsmith91', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Smith', 'Hi! My name is Gabriel. I am 22 and I am looking for a roommate in The Reserve 844 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jjohnson92', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Johnson', 'Hi! My name is Jamie. I am 24 and I am looking for a roommate in Creswell 430 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hboil93', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Boil', 'Hi! My name is Hunter. I am 19 and I am looking for a roommate in Vandiver 627 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/51.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hwoobles94', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Woobles', 'Hi! My name is Hunter. I am 20 and I am looking for a roommate in Payne 143 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btravis95', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Travis', 'Hi! My name is Benen. I am 23 and I am looking for a roommate in Rooker 224 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nfat96', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Fat', 'Hi! My name is Netra. I am 24 and I am looking for a roommate in Vandiver 231 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/8.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sbar97', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Bar', 'Hi! My name is Stella. I am 24 and I am looking for a roommate in Vandiver 215 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btexas98', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Baddie', 'Texas', 'Hi! My name is Baddie. I am 20 and I am looking for a roommate in Myers 177 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kalabama99', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Alabama', 'Hi! My name is Kimberly. I am 22 and I am looking for a roommate in Myers 192 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smoore100', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Moore', 'Hi! My name is Sebastian. I am 20 and I am looking for a roommate in Sorority House 682 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('asarr101', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Sarr', 'Hi! My name is Aaron. I am 19 and I am looking for a roommate in Mell 751 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ghoney102', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Honey', 'Hi! My name is Gabriel. I am 24 and I am looking for a roommate in Vandiver 103 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hbrown103', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Brown', 'Hi! My name is Hadiza. I am 24 and I am looking for a roommate in Mell 494 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nclass104', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Class', 'Hi! My name is Netra. I am 22 and I am looking for a roommate in Mell 606 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ageorgia105', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Georgia', 'Hi! My name is Amara. I am 21 and I am looking for a roommate in Mell 830 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('apuccini106', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Adrian', 'Puccini', 'Hi! My name is Adrian. I am 23 and I am looking for a roommate in Payne 623 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('asmith107', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Smith', 'Hi! My name is Arafah. I am 24 and I am looking for a roommate in The Reserve 421 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ipaper108', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Paper', 'Hi! My name is Indiana. I am 20 and I am looking for a roommate in Vandiver 785 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zwilliams109', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Williams', 'Hi! My name is Zoe. I am 19 and I am looking for a roommate in Creswell 418 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mpaper110', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Paper', 'Hi! My name is Marcus. I am 18 and I am looking for a roommate in The Connections 352 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbrown111', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Brown', 'Hi! My name is Jackson. I am 24 and I am looking for a roommate in The Reserve 745 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('xbar112', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Xavier', 'Bar', 'Hi! My name is Xavier. I am 21 and I am looking for a roommate in Creswell 711 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gpaper113', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Paper', 'Hi! My name is Gabriel. I am 18 and I am looking for a roommate in Sorority House 817 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('czimbabwe114', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Zimbabwe', 'Hi! My name is Caleb. I am 24 and I am looking for a roommate in Myers 432 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sdavis115', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Davis', 'Hi! My name is Sami. I am 19 and I am looking for a roommate in The Connections 584 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spaper116', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Paper', 'Hi! My name is Stella. I am 22 and I am looking for a roommate in Sorority House 495 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ltexas117', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Texas', 'Hi! My name is Leah. I am 21 and I am looking for a roommate in Payne 400 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mbrown118', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Brown', 'Hi! My name is Maya. I am 22 and I am looking for a roommate in 1516 596 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/86.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tclass119', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Class', 'Hi! My name is Tuesday. I am 23 and I am looking for a roommate in Rooker 432 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia120', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Georgia', 'Hi! My name is Bella. I am 24 and I am looking for a roommate in Creswell 230 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spot121', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Pot', 'Hi! My name is Sebastian. I am 20 and I am looking for a roommate in Sorority House 880 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/49.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mzimbabwe122', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Zimbabwe', 'Hi! My name is Meredith. I am 22 and I am looking for a roommate in Mell 758 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rgeorgia123', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Georgia', 'Hi! My name is Ruby. I am 19 and I am looking for a roommate in Rooker 851 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spuccini124', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Puccini', 'Hi! My name is Sebastian. I am 20 and I am looking for a roommate in The Reserve 852 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('staylor125', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Taylor', 'Hi! My name is Sophia. I am 19 and I am looking for a roommate in Myers 130 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lbrown126', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Brown', 'Hi! My name is Leah. I am 19 and I am looking for a roommate in Sorority House 606 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ikardashian127', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Kardashian', 'Hi! My name is Isaiah. I am 20 and I am looking for a roommate in Myers 450 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mmoore128', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Moore', 'Hi! My name is Miles. I am 18 and I am looking for a roommate in Sorority House 668 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ctea129', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Tea', 'Hi! My name is Conrad. I am 18 and I am looking for a roommate in The Reserve 265 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhibiscus130', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Hibiscus', 'Hi! My name is Jackson. I am 24 and I am looking for a roommate in 1516 801 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cwilliams131', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Williams', 'Hi! My name is Conrad. I am 19 and I am looking for a roommate in The Reserve 805 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btea132', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Tea', 'Hi! My name is Brock. I am 23 and I am looking for a roommate in Creswell 737 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rjohnson133', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Johnson', 'Hi! My name is Ruby. I am 22 and I am looking for a roommate in Rooker 103 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/81.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('noil134', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Oil', 'Hi! My name is Netra. I am 20 and I am looking for a roommate in The Connections 523 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cpaper135', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Paper', 'Hi! My name is Chinmay. I am 21 and I am looking for a roommate in Mell 276 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aamin136', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Amin', 'Hi! My name is Aaron. I am 21 and I am looking for a roommate in Vandiver 399 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/94.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swoobles137', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Woobles', 'Hi! My name is Sadie. I am 19 and I am looking for a roommate in 1516 343 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/37.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hbrown138', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hakim', 'Brown', 'Hi! My name is Hakim. I am 22 and I am looking for a roommate in Payne 276 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/2.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('esauce139', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Sauce', 'Hi! My name is Elijah. I am 20 and I am looking for a roommate in Sorority House 793 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/59.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('blove140', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Love', 'Hi! My name is Brock. I am 20 and I am looking for a roommate in Creswell 823 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('akardashian141', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Kardashian', 'Hi! My name is Amara. I am 22 and I am looking for a roommate in Payne 802 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/57.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lbrown142', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Brown', 'Hi! My name is Layla. I am 23 and I am looking for a roommate in The Reserve 252 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('abar143', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Bar', 'Hi! My name is Avery. I am 19 and I am looking for a roommate in Sorority House 813 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('atea144', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Tea', 'Hi! My name is Arafah. I am 20 and I am looking for a roommate in Myers 188 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtea145', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Tea', 'Hi! My name is Jameson. I am 18 and I am looking for a roommate in Rooker 320 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rjohnson146', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Johnson', 'Hi! My name is Ridwaan. I am 23 and I am looking for a roommate in The Connections 241 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('csmith147', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Smith', 'Hi! My name is Chloe. I am 21 and I am looking for a roommate in Payne 346 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hpot148', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Pot', 'Hi! My name is Hadiza. I am 20 and I am looking for a roommate in The Reserve 782 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbaker149', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Baker', 'Hi! My name is Jameson. I am 20 and I am looking for a roommate in 1516 171 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gboil150', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Boil', 'Hi! My name is Gabriel. I am 18 and I am looking for a roommate in 1516 645 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rfat151', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Fat', 'Hi! My name is Ridwaan. I am 19 and I am looking for a roommate in Payne 824 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zbrown152', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Brown', 'Hi! My name is Zoe. I am 22 and I am looking for a roommate in Mell 518 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gkardashian153', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Kardashian', 'Hi! My name is Grace. I am 18 and I am looking for a roommate in Rooker 114 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('slove154', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Love', 'Hi! My name is Sami. I am 20 and I am looking for a roommate in Myers 832 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker155', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Baker', 'Hi! My name is Bella. I am 19 and I am looking for a roommate in 1516 848 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/14.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cmoore156', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Moore', 'Hi! My name is Chloe. I am 22 and I am looking for a roommate in The Connections 837 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmiller157', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Miller', 'Hi! My name is Bella. I am 19 and I am looking for a roommate in Myers 199 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jstanley158', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Stanley', 'Hi! My name is Jameson. I am 23 and I am looking for a roommate in The Reserve 431 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ckardashian159', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Kardashian', 'Hi! My name is Chloe. I am 24 and I am looking for a roommate in Creswell 401 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('apaper160', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Paper', 'Hi! My name is Aarya. I am 21 and I am looking for a roommate in Myers 333 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jmirror161', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Mirror', 'Hi! My name is Justin. I am 24 and I am looking for a roommate in Myers 609 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ttea162', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Tea', 'Hi! My name is Trey. I am 23 and I am looking for a roommate in Vandiver 283 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mbrown163', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Brown', 'Hi! My name is Meredith. I am 23 and I am looking for a roommate in The Reserve 423 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtravis164', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Travis', 'Hi! My name is Jackson. I am 21 and I am looking for a roommate in Myers 191 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cmoore165', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Moore', 'Hi! My name is Caleb. I am 19 and I am looking for a roommate in Payne 573 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mtexas166', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Texas', 'Hi! My name is Malaysia. I am 23 and I am looking for a roommate in Payne 890 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmoore167', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Moore', 'Hi! My name is Bina. I am 24 and I am looking for a roommate in Rooker 714 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/66.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spuccini168', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Puccini', 'Hi! My name is Sophia. I am 18 and I am looking for a roommate in Rooker 740 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gwilliams169', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Williams', 'Hi! My name is Grace. I am 23 and I am looking for a roommate in Vandiver 824 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bjohnson170', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Johnson', 'Hi! My name is Burgers. I am 20 and I am looking for a roommate in Payne 148 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/79.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jfat171', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Fat', 'Hi! My name is Julian. I am 20 and I am looking for a roommate in Vandiver 107 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mjones172', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Jones', 'Hi! My name is Meredith. I am 23 and I am looking for a roommate in Vandiver 569 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mlove173', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Love', 'Hi! My name is Malaysia. I am 24 and I am looking for a roommate in 1516 620 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mtexas174', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Texas', 'Hi! My name is Marcus. I am 19 and I am looking for a roommate in Mell 759 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/10.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zmirror175', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Mirror', 'Hi! My name is Zoe. I am 24 and I am looking for a roommate in 1516 506 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('iwilliams176', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Williams', 'Hi! My name is Isaiah. I am 24 and I am looking for a roommate in The Connections 806 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rsauce177', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Sauce', 'Hi! My name is Ruby. I am 19 and I am looking for a roommate in Myers 829 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btea178', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Tea', 'Hi! My name is Bryson. I am 22 and I am looking for a roommate in Payne 248 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jchicago179', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Chicago', 'Hi! My name is Jackson. I am 18 and I am looking for a roommate in Creswell 505 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhoney180', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Honey', 'Hi! My name is Jason. I am 20 and I am looking for a roommate in Vandiver 686 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/40.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mpaper181', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Paper', 'Hi! My name is Meredith. I am 19 and I am looking for a roommate in Mell 119 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hstanley182', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hakim', 'Stanley', 'Hi! My name is Hakim. I am 23 and I am looking for a roommate in The Connections 686 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/14.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jdavis183', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Davis', 'Hi! My name is Jaquan. I am 23 and I am looking for a roommate in Payne 761 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('owoobles184', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Woobles', 'Hi! My name is Onika. I am 18 and I am looking for a roommate in Creswell 203 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('eoil185', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Oil', 'Hi! My name is Elijah. I am 19 and I am looking for a roommate in Sorority House 512 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ipot186', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Pot', 'Hi! My name is Isaiah. I am 23 and I am looking for a roommate in Payne 459 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sstanley187', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Stanley', 'Hi! My name is Sadie. I am 23 and I am looking for a roommate in The Connections 519 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/83.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ljones188', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Jones', 'Hi! My name is Leah. I am 23 and I am looking for a roommate in Payne 125 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('apaper189', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Paper', 'Hi! My name is Amara. I am 19 and I am looking for a roommate in Sorority House 570 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ibaker190', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Baker', 'Hi! My name is Isaiah. I am 24 and I am looking for a roommate in The Reserve 795 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ahibiscus191', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Adrian', 'Hibiscus', 'Hi! My name is Adrian. I am 23 and I am looking for a roommate in 1516 256 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ezimbabwe192', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Zimbabwe', 'Hi! My name is Evelyn. I am 22 and I am looking for a roommate in The Reserve 506 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/69.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lsarr193', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Sarr', 'Hi! My name is Leah. I am 21 and I am looking for a roommate in Vandiver 843 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia194', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Blessing', 'Georgia', 'Hi! My name is Blessing. I am 21 and I am looking for a roommate in Payne 882 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('voil195', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Oil', 'Hi! My name is Victoria. I am 22 and I am looking for a roommate in Creswell 418 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/10.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wmirror196', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Mirror', 'Hi! My name is William. I am 18 and I am looking for a roommate in Creswell 804 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhibiscus197', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Hibiscus', 'Hi! My name is Julian. I am 22 and I am looking for a roommate in Sorority House 485 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/79.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jstanley198', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Stanley', 'Hi! My name is Julian. I am 21 and I am looking for a roommate in Sorority House 132 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbrown199', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Brown', 'Hi! My name is Belcalis. I am 21 and I am looking for a roommate in Rooker 423 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ddavis200', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Davis', 'Hi! My name is Diana. I am 21 and I am looking for a roommate in Sorority House 525 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/2.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntea201', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Tea', 'Hi! My name is Nora. I am 23 and I am looking for a roommate in Myers 471 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntaylor202', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Taylor', 'Hi! My name is Nadia. I am 18 and I am looking for a roommate in 1516 518 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lalabama203', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Alabama', 'Hi! My name is Layla. I am 18 and I am looking for a roommate in Vandiver 598 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hclass204', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hakim', 'Class', 'Hi! My name is Hakim. I am 23 and I am looking for a roommate in 1516 434 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ahibiscus205', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Hibiscus', 'Hi! My name is Aarya. I am 24 and I am looking for a roommate in The Reserve 868 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/83.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bamin206', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Amin', 'Hi! My name is Brock. I am 19 and I am looking for a roommate in Payne 238 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/7.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rsauce207', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Sauce', 'Hi! My name is Ridwaan. I am 18 and I am looking for a roommate in Payne 781 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lkardashian208', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Kardashian', 'Hi! My name is Leo. I am 24 and I am looking for a roommate in 1516 816 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cmoore209', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Moore', 'Hi! My name is Conrad. I am 23 and I am looking for a roommate in Mell 435 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stexas210', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Texas', 'Hi! My name is Sadie. I am 22 and I am looking for a roommate in Vandiver 833 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kjohnson211', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Johnson', 'Hi! My name is Kimberly. I am 20 and I am looking for a roommate in Rooker 472 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amiller212', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Miller', 'Hi! My name is Aarya. I am 22 and I am looking for a roommate in Rooker 754 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jsmith213', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Smith', 'Hi! My name is Jameson. I am 19 and I am looking for a roommate in Mell 595 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nbrown214', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Brown', 'Hi! My name is Nathan. I am 21 and I am looking for a roommate in Myers 658 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cgeorgia215', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Georgia', 'Hi! My name is Chloe. I am 20 and I am looking for a roommate in Myers 181 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stexas216', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Texas', 'Hi! My name is Stella. I am 21 and I am looking for a roommate in Myers 442 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bpuccini217', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Puccini', 'Hi! My name is Benen. I am 22 and I am looking for a roommate in 1516 617 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/14.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhoney218', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Honey', 'Hi! My name is Jaquan. I am 22 and I am looking for a roommate in Vandiver 793 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smirror219', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Mirror', 'Hi! My name is Sami. I am 18 and I am looking for a roommate in Mell 212 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ojones220', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Jones', 'Hi! My name is Onika. I am 20 and I am looking for a roommate in The Reserve 218 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('noil221', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Oil', 'Hi! My name is Natalia. I am 20 and I am looking for a roommate in Sorority House 683 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('astanley222', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Stanley', 'Hi! My name is Autumn. I am 22 and I am looking for a roommate in Vandiver 439 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bfat223', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Fat', 'Hi! My name is Basanta. I am 19 and I am looking for a roommate in 1516 186 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/78.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spot224', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Pot', 'Hi! My name is Sophia. I am 20 and I am looking for a roommate in Sorority House 612 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ndavis225', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Davis', 'Hi! My name is Nora. I am 21 and I am looking for a roommate in Sorority House 856 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/37.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('shoney226', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Honey', 'Hi! My name is Sophia. I am 20 and I am looking for a roommate in Mell 856 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mchicago227', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Chicago', 'Hi! My name is Malaysia. I am 19 and I am looking for a roommate in Vandiver 282 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/49.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lhoney228', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Honey', 'Hi! My name is Leah. I am 20 and I am looking for a roommate in The Reserve 842 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lpot229', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Pot', 'Hi! My name is Leo. I am 21 and I am looking for a roommate in The Reserve 828 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mjohnson230', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Johnson', 'Hi! My name is Miles. I am 18 and I am looking for a roommate in Rooker 200 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/97.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mwilliams231', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Williams', 'Hi! My name is Maya. I am 21 and I am looking for a roommate in Rooker 240 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lpot232', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Pot', 'Hi! My name is Layla. I am 19 and I am looking for a roommate in Mell 786 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bboil233', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Baddie', 'Boil', 'Hi! My name is Baddie. I am 18 and I am looking for a roommate in The Connections 502 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ctravis234', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Travis', 'Hi! My name is Chloe. I am 19 and I am looking for a roommate in Sorority House 345 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('coil235', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Oil', 'Hi! My name is Chloe. I am 22 and I am looking for a roommate in Sorority House 482 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('blove236', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Love', 'Hi! My name is Brock. I am 21 and I am looking for a roommate in 1516 817 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwilliams237', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brooklyn', 'Williams', 'Hi! My name is Brooklyn. I am 23 and I am looking for a roommate in Mell 556 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia238', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Baddie', 'Georgia', 'Hi! My name is Baddie. I am 18 and I am looking for a roommate in Vandiver 802 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jchicago239', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Chicago', 'Hi! My name is Jamie. I am 22 and I am looking for a roommate in The Reserve 338 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('npuccini240', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Puccini', 'Hi! My name is Natalia. I am 22 and I am looking for a roommate in Payne 208 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/87.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cjones241', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Jones', 'Hi! My name is Conrad. I am 20 and I am looking for a roommate in Payne 328 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aamin242', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Amin', 'Hi! My name is Autumn. I am 24 and I am looking for a roommate in Vandiver 597 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kkardashian243', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Kardashian', 'Hi! My name is Kimberly. I am 22 and I am looking for a roommate in Rooker 337 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhoney244', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Honey', 'Hi! My name is Jameson. I am 24 and I am looking for a roommate in The Connections 204 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('adavis245', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Davis', 'Hi! My name is Arafah. I am 18 and I am looking for a roommate in The Connections 375 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sjones246', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Jones', 'Hi! My name is Sophia. I am 21 and I am looking for a roommate in 1516 802 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('afat247', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Adrian', 'Fat', 'Hi! My name is Adrian. I am 24 and I am looking for a roommate in 1516 319 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hmirror248', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Mirror', 'Hi! My name is Hunter. I am 19 and I am looking for a roommate in The Reserve 246 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sjohnson249', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Johnson', 'Hi! My name is Sadie. I am 18 and I am looking for a roommate in Sorority House 851 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nwilson250', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Wilson', 'Hi! My name is Natalia. I am 23 and I am looking for a roommate in The Connections 702 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('achicago251', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Chicago', 'Hi! My name is Arafah. I am 24 and I am looking for a roommate in Rooker 294 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cbar252', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Bar', 'Hi! My name is Conrad. I am 18 and I am looking for a roommate in Sorority House 344 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('etaylor253', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Taylor', 'Hi! My name is Elijah. I am 23 and I am looking for a roommate in 1516 765 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssarr254', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Sarr', 'Hi! My name is Stella. I am 21 and I am looking for a roommate in Vandiver 697 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('eboil255', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Boil', 'Hi! My name is Elijah. I am 18 and I am looking for a roommate in The Reserve 277 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bjohnson256', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Johnson', 'Hi! My name is Bina. I am 19 and I am looking for a roommate in Vandiver 698 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssarr257', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Sarr', 'Hi! My name is Stella. I am 21 and I am looking for a roommate in Rooker 388 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smoore258', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Moore', 'Hi! My name is Sophia. I am 19 and I am looking for a roommate in The Reserve 715 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tpaper259', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Paper', 'Hi! My name is Trey. I am 19 and I am looking for a roommate in Sorority House 251 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sbaker260', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Baker', 'Hi! My name is Sophia. I am 24 and I am looking for a roommate in The Reserve 747 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bboil261', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Boil', 'Hi! My name is Brock. I am 22 and I am looking for a roommate in Payne 635 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('etaylor262', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Taylor', 'Hi! My name is Evelyn. I am 22 and I am looking for a roommate in The Connections 716 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mbaker263', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Baker', 'Hi! My name is Maya. I am 23 and I am looking for a roommate in Creswell 612 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aextra264', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Extra', 'Hi! My name is Arafah. I am 22 and I am looking for a roommate in Vandiver 677 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gbaker265', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Baker', 'Hi! My name is Glenda. I am 19 and I am looking for a roommate in Vandiver 391 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ngeorgia266', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Georgia', 'Hi! My name is Nathan. I am 18 and I am looking for a roommate in Payne 187 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('namin267', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Amin', 'Hi! My name is Nadia. I am 24 and I am looking for a roommate in Payne 599 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bextra268', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Extra', 'Hi! My name is Basanta. I am 22 and I am looking for a roommate in The Reserve 121 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmirror269', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Mirror', 'Hi! My name is Bina. I am 21 and I am looking for a roommate in The Reserve 287 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stravis270', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Travis', 'Hi! My name is Sebastian. I am 23 and I am looking for a roommate in The Reserve 546 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/2.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ltaylor271', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Taylor', 'Hi! My name is Layla. I am 21 and I am looking for a roommate in Sorority House 804 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/40.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btea272', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Tea', 'Hi! My name is Burgers. I am 20 and I am looking for a roommate in Payne 835 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sdavis273', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Davis', 'Hi! My name is Secret. I am 19 and I am looking for a roommate in The Reserve 516 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ewoobles274', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Woobles', 'Hi! My name is Evelyn. I am 19 and I am looking for a roommate in Rooker 637 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwoobles275', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Woobles', 'Hi! My name is Burgers. I am 18 and I am looking for a roommate in The Reserve 405 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rwilliams276', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Williams', 'Hi! My name is Ruby. I am 19 and I am looking for a roommate in Payne 403 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmoore277', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Moore', 'Hi! My name is Binta. I am 19 and I am looking for a roommate in 1516 420 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bdavis278', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Davis', 'Hi! My name is Bryson. I am 23 and I am looking for a roommate in The Reserve 341 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bextra279', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Extra', 'Hi! My name is Brock. I am 19 and I am looking for a roommate in Sorority House 381 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cmoore280', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Moore', 'Hi! My name is Conrad. I am 22 and I am looking for a roommate in Mell 510 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/51.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tpot281', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Pot', 'Hi! My name is Trey. I am 23 and I am looking for a roommate in Myers 102 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/61.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btravis282', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Travis', 'Hi! My name is Bryson. I am 22 and I am looking for a roommate in Creswell 276 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jgeorgia283', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Georgia', 'Hi! My name is Jameson. I am 20 and I am looking for a roommate in Creswell 788 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kchicago284', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Chicago', 'Hi! My name is Karen. I am 20 and I am looking for a roommate in The Reserve 519 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lhoney285', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Honey', 'Hi! My name is Layla. I am 20 and I am looking for a roommate in Creswell 549 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('twoobles286', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Woobles', 'Hi! My name is Trey. I am 23 and I am looking for a roommate in Mell 243 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gwoobles287', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Woobles', 'Hi! My name is Glenda. I am 19 and I am looking for a roommate in Vandiver 885 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cmoore288', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Moore', 'Hi! My name is Chinmay. I am 21 and I am looking for a roommate in 1516 136 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kjones289', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Jones', 'Hi! My name is Kimberly. I am 22 and I am looking for a roommate in Payne 564 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('okardashian290', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Kardashian', 'Hi! My name is Onika. I am 22 and I am looking for a roommate in Sorority House 244 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mbaker291', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Baker', 'Hi! My name is Miles. I am 24 and I am looking for a roommate in Payne 200 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amiller292', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Miller', 'Hi! My name is Aaron. I am 21 and I am looking for a roommate in Payne 820 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/78.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('joil293', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Oil', 'Hi! My name is Juancarlos. I am 24 and I am looking for a roommate in Myers 247 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gwoobles294', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Woobles', 'Hi! My name is Gabriel. I am 19 and I am looking for a roommate in The Reserve 761 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vwilliams295', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Williams', 'Hi! My name is Victoria. I am 19 and I am looking for a roommate in Mell 634 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/49.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nlove296', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Love', 'Hi! My name is Nora. I am 21 and I am looking for a roommate in Myers 116 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('chibiscus297', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Hibiscus', 'Hi! My name is Corella. I am 23 and I am looking for a roommate in Vandiver 790 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lzimbabwe298', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Zimbabwe', 'Hi! My name is Leo. I am 18 and I am looking for a roommate in 1516 718 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/9.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('apot299', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Pot', 'Hi! My name is Avery. I am 18 and I am looking for a roommate in Vandiver 436 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/8.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vismail300', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Ismail', 'Hi! My name is Victoria. I am 23 and I am looking for a roommate in The Reserve 632 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntexas301', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Texas', 'Hi! My name is Nadia. I am 19 and I am looking for a roommate in Vandiver 385 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('blove302', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Baddie', 'Love', 'Hi! My name is Baddie. I am 19 and I am looking for a roommate in The Reserve 680 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('czimbabwe303', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Zimbabwe', 'Hi! My name is Caleb. I am 18 and I am looking for a roommate in Vandiver 239 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cdavis304', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Davis', 'Hi! My name is Chloe. I am 21 and I am looking for a roommate in The Connections 132 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swilson305', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Wilson', 'Hi! My name is Sophia. I am 20 and I am looking for a roommate in 1516 899 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('awilliams306', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Williams', 'Hi! My name is Autumn. I am 18 and I am looking for a roommate in The Connections 175 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/83.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtravis307', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Travis', 'Hi! My name is Jameson. I am 23 and I am looking for a roommate in Payne 888 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jwoobles308', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Woobles', 'Hi! My name is Jackson. I am 19 and I am looking for a roommate in Payne 369 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lsarr309', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Sarr', 'Hi! My name is Leo. I am 18 and I am looking for a roommate in Rooker 291 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sbrown310', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Brown', 'Hi! My name is Sami. I am 22 and I am looking for a roommate in 1516 886 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wzimbabwe311', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Zimbabwe', 'Hi! My name is William. I am 22 and I am looking for a roommate in Rooker 226 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dwilliams312', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Williams', 'Hi! My name is Diana. I am 22 and I am looking for a roommate in Myers 187 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swoobles313', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Woobles', 'Hi! My name is Secret. I am 20 and I am looking for a roommate in Myers 773 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/7.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtaylor314', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Taylor', 'Hi! My name is Jackson. I am 18 and I am looking for a roommate in Mell 878 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtea315', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Tea', 'Hi! My name is Jaquan. I am 23 and I am looking for a roommate in Sorority House 844 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/93.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('atexas316', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Texas', 'Hi! My name is Amara. I am 21 and I am looking for a roommate in Mell 242 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ndavis317', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Davis', 'Hi! My name is Nadia. I am 21 and I am looking for a roommate in 1516 271 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/93.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cfat318', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Fat', 'Hi! My name is Caleb. I am 19 and I am looking for a roommate in Payne 345 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('achicago319', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Chicago', 'Hi! My name is Autumn. I am 21 and I am looking for a roommate in Myers 247 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ageorgia320', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Georgia', 'Hi! My name is Amara. I am 24 and I am looking for a roommate in Sorority House 689 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhibiscus321', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Hibiscus', 'Hi! My name is Jameson. I am 21 and I am looking for a roommate in Vandiver 528 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('woil322', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Oil', 'Hi! My name is William. I am 23 and I am looking for a roommate in Sorority House 179 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/61.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rfat323', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Fat', 'Hi! My name is Ruby. I am 20 and I am looking for a roommate in The Reserve 654 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('blove324', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Love', 'Hi! My name is Burgers. I am 22 and I am looking for a roommate in The Reserve 336 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/79.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('schicago325', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Chicago', 'Hi! My name is Sophia. I am 19 and I am looking for a roommate in Myers 101 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ljohnson326', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Johnson', 'Hi! My name is Leo. I am 18 and I am looking for a roommate in Myers 150 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbar327', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Bar', 'Hi! My name is Bella. I am 19 and I am looking for a roommate in 1516 858 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mhoney328', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Honey', 'Hi! My name is Maya. I am 20 and I am looking for a roommate in Rooker 322 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/8.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mamin329', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Amin', 'Hi! My name is Meredith. I am 21 and I am looking for a roommate in The Connections 621 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cextra330', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Extra', 'Hi! My name is Conrad. I am 21 and I am looking for a roommate in Rooker 181 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ageorgia331', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Georgia', 'Hi! My name is Amara. I am 18 and I am looking for a roommate in Rooker 660 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hbar332', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Bar', 'Hi! My name is Hadiza. I am 23 and I am looking for a roommate in The Reserve 394 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/66.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aextra333', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Extra', 'Hi! My name is Avery. I am 21 and I am looking for a roommate in Myers 799 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/75.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('opaper334', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Paper', 'Hi! My name is Onika. I am 23 and I am looking for a roommate in Mell 210 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ipuccini335', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Puccini', 'Hi! My name is Indiana. I am 19 and I am looking for a roommate in Rooker 620 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gmiller336', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Miller', 'Hi! My name is Gabriel. I am 24 and I am looking for a roommate in Myers 823 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('emiller337', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Miller', 'Hi! My name is Elijah. I am 18 and I am looking for a roommate in Mell 498 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('czimbabwe338', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Zimbabwe', 'Hi! My name is Carson. I am 22 and I am looking for a roommate in Myers 752 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hfat339', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hakim', 'Fat', 'Hi! My name is Hakim. I am 19 and I am looking for a roommate in 1516 164 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbar340', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Bar', 'Hi! My name is Bella. I am 24 and I am looking for a roommate in Vandiver 360 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hzimbabwe341', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Zimbabwe', 'Hi! My name is Hunter. I am 23 and I am looking for a roommate in Payne 815 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/56.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbaker342', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Baker', 'Hi! My name is Julian. I am 21 and I am looking for a roommate in The Connections 733 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rwilliams343', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Williams', 'Hi! My name is Ridwaan. I am 23 and I am looking for a roommate in Payne 895 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dtea344', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Dominic', 'Tea', 'Hi! My name is Dominic. I am 19 and I am looking for a roommate in Vandiver 347 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tbar345', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Bar', 'Hi! My name is Trey. I am 21 and I am looking for a roommate in The Connections 459 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bclass346', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Class', 'Hi! My name is Bina. I am 22 and I am looking for a roommate in Myers 849 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker347', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Baddie', 'Baker', 'Hi! My name is Baddie. I am 22 and I am looking for a roommate in The Connections 454 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bextra348', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Extra', 'Hi! My name is Bina. I am 21 and I am looking for a roommate in Vandiver 650 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('twilliams349', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Williams', 'Hi! My name is Tuesday. I am 18 and I am looking for a roommate in Rooker 781 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('soil350', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Oil', 'Hi! My name is Secret. I am 20 and I am looking for a roommate in Mell 468 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kwoobles351', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Woobles', 'Hi! My name is Kimberly. I am 18 and I am looking for a roommate in The Reserve 266 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wstanley352', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Stanley', 'Hi! My name is William. I am 20 and I am looking for a roommate in Vandiver 661 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('afat353', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Adrian', 'Fat', 'Hi! My name is Adrian. I am 20 and I am looking for a roommate in Creswell 241 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/94.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tmiller354', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Miller', 'Hi! My name is Tuesday. I am 22 and I am looking for a roommate in Payne 882 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amoore355', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Moore', 'Hi! My name is Avery. I am 20 and I am looking for a roommate in Rooker 579 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/78.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zkardashian356', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Kardashian', 'Hi! My name is Zoe. I am 21 and I am looking for a roommate in Payne 829 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/44.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gmirror357', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Mirror', 'Hi! My name is Gabriel. I am 18 and I am looking for a roommate in Vandiver 827 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nismail358', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Ismail', 'Hi! My name is Nora. I am 22 and I am looking for a roommate in Myers 301 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('samin359', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Amin', 'Hi! My name is Sadie. I am 24 and I am looking for a roommate in Vandiver 627 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mboil360', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Boil', 'Hi! My name is Meredith. I am 24 and I am looking for a roommate in Vandiver 730 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jpuccini361', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Puccini', 'Hi! My name is Jaquan. I am 24 and I am looking for a roommate in Sorority House 702 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bclass362', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Class', 'Hi! My name is Basanta. I am 20 and I am looking for a roommate in The Connections 752 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tzimbabwe363', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Zimbabwe', 'Hi! My name is Tuesday. I am 22 and I am looking for a roommate in 1516 583 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/43.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbar364', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Bar', 'Hi! My name is Juancarlos. I am 18 and I am looking for a roommate in Myers 629 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/10.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tdavis365', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Davis', 'Hi! My name is Trey. I am 20 and I am looking for a roommate in Vandiver 874 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssarr366', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Sarr', 'Hi! My name is Secret. I am 21 and I am looking for a roommate in Payne 398 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nbrown367', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Brown', 'Hi! My name is Natalia. I am 23 and I am looking for a roommate in The Connections 502 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mamin368', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Amin', 'Hi! My name is Miles. I am 18 and I am looking for a roommate in Rooker 616 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/87.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amirror369', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Mirror', 'Hi! My name is Avery. I am 24 and I am looking for a roommate in The Reserve 590 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/79.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cmoore370', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Moore', 'Hi! My name is Carson. I am 18 and I am looking for a roommate in Mell 410 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/44.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ttaylor371', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Taylor', 'Hi! My name is Tuesday. I am 18 and I am looking for a roommate in Creswell 426 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jpuccini372', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Puccini', 'Hi! My name is Julian. I am 23 and I am looking for a roommate in Sorority House 682 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/87.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('xwilson373', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Xavier', 'Wilson', 'Hi! My name is Xavier. I am 23 and I am looking for a roommate in 1516 823 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tzimbabwe374', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Zimbabwe', 'Hi! My name is Tuesday. I am 24 and I am looking for a roommate in Myers 484 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/93.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hdavis375', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Davis', 'Hi! My name is Hunter. I am 21 and I am looking for a roommate in Mell 634 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('klove376', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Love', 'Hi! My name is Karen. I am 18 and I am looking for a roommate in Vandiver 594 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bzimbabwe377', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Baddie', 'Zimbabwe', 'Hi! My name is Baddie. I am 18 and I am looking for a roommate in Vandiver 458 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jalabama378', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Alabama', 'Hi! My name is Juancarlos. I am 22 and I am looking for a roommate in Payne 729 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('shoney379', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Honey', 'Hi! My name is Sophia. I am 20 and I am looking for a roommate in Sorority House 465 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/72.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bfat380', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Fat', 'Hi! My name is Bryson. I am 23 and I am looking for a roommate in Vandiver 123 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mbaker381', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Baker', 'Hi! My name is Miles. I am 21 and I am looking for a roommate in The Connections 411 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sstanley382', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Stanley', 'Hi! My name is Sebastian. I am 24 and I am looking for a roommate in Myers 229 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lmoore383', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Moore', 'Hi! My name is Leo. I am 22 and I am looking for a roommate in Sorority House 356 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbar384', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Bar', 'Hi! My name is Bina. I am 19 and I am looking for a roommate in The Reserve 227 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('xmiller385', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Xavier', 'Miller', 'Hi! My name is Xavier. I am 18 and I am looking for a roommate in Mell 705 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jalabama386', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Alabama', 'Hi! My name is Jamie. I am 22 and I am looking for a roommate in Vandiver 444 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vhoney387', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Honey', 'Hi! My name is Victoria. I am 20 and I am looking for a roommate in Sorority House 270 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swoobles388', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Woobles', 'Hi! My name is Secret. I am 18 and I am looking for a roommate in Creswell 489 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bpaper389', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Paper', 'Hi! My name is Burgers. I am 19 and I am looking for a roommate in Sorority House 893 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('shibiscus390', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Hibiscus', 'Hi! My name is Stella. I am 19 and I am looking for a roommate in Payne 216 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('shoney391', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Honey', 'Hi! My name is Sadie. I am 18 and I am looking for a roommate in 1516 461 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/81.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('akardashian392', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Kardashian', 'Hi! My name is Arafah. I am 22 and I am looking for a roommate in Payne 192 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sfat393', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Fat', 'Hi! My name is Sadie. I am 24 and I am looking for a roommate in 1516 495 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jwoobles394', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Woobles', 'Hi! My name is Julian. I am 22 and I am looking for a roommate in Rooker 860 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('atexas395', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Texas', 'Hi! My name is Aaron. I am 22 and I am looking for a roommate in Rooker 641 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mwilliams396', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Williams', 'Hi! My name is Miles. I am 22 and I am looking for a roommate in Payne 450 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/78.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mismail397', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Ismail', 'Hi! My name is Maya. I am 24 and I am looking for a roommate in The Reserve 129 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rfat398', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Fat', 'Hi! My name is Ruby. I am 20 and I am looking for a roommate in Mell 730 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmoore399', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Moore', 'Hi! My name is Basanta. I am 22 and I am looking for a roommate in 1516 393 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/44.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('pmoore400', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Peyton', 'Moore', 'Hi! My name is Peyton. I am 22 and I am looking for a roommate in Sorority House 878 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smiller401', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Miller', 'Hi! My name is Stella. I am 22 and I am looking for a roommate in Creswell 608 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hlove402', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Love', 'Hi! My name is Hunter. I am 20 and I am looking for a roommate in Creswell 439 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/61.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('iclass403', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Class', 'Hi! My name is Indiana. I am 23 and I am looking for a roommate in 1516 600 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cfat404', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Fat', 'Hi! My name is Caleb. I am 18 and I am looking for a roommate in 1516 518 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/37.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tsmith405', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Smith', 'Hi! My name is Trey. I am 21 and I am looking for a roommate in Rooker 399 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hhibiscus406', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Hibiscus', 'Hi! My name is Hadiza. I am 19 and I am looking for a roommate in Creswell 510 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('pbaker407', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Peyton', 'Baker', 'Hi! My name is Peyton. I am 21 and I am looking for a roommate in Mell 756 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('iboil408', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Boil', 'Hi! My name is Indiana. I am 18 and I am looking for a roommate in 1516 376 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jmirror409', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Mirror', 'Hi! My name is Jackson. I am 22 and I am looking for a roommate in Vandiver 482 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtaylor410', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Taylor', 'Hi! My name is Jackson. I am 22 and I am looking for a roommate in Payne 231 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nsauce411', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Sauce', 'Hi! My name is Nora. I am 18 and I am looking for a roommate in Vandiver 280 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jdavis412', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Davis', 'Hi! My name is Jameson. I am 18 and I am looking for a roommate in Myers 243 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('szimbabwe413', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Zimbabwe', 'Hi! My name is Stella. I am 19 and I am looking for a roommate in Mell 217 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nmoore414', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Moore', 'Hi! My name is Netra. I am 24 and I am looking for a roommate in The Connections 274 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('slove415', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Shelby', 'Love', 'Hi! My name is Shelby. I am 24 and I am looking for a roommate in Rooker 421 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mextra416', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Extra', 'Hi! My name is Maya. I am 21 and I am looking for a roommate in 1516 898 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kdavis417', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Davis', 'Hi! My name is Kimberly. I am 20 and I am looking for a roommate in Sorority House 335 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hhoney418', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Honey', 'Hi! My name is Hannah. I am 24 and I am looking for a roommate in Vandiver 422 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btravis419', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Travis', 'Hi! My name is Benen. I am 18 and I am looking for a roommate in Myers 117 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vsarr420', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Sarr', 'Hi! My name is Victoria. I am 21 and I am looking for a roommate in Myers 823 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/94.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wgeorgia421', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Georgia', 'Hi! My name is William. I am 18 and I am looking for a roommate in Myers 643 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vmirror422', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Mirror', 'Hi! My name is Victoria. I am 22 and I am looking for a roommate in The Reserve 296 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbrown423', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Brown', 'Hi! My name is Basanta. I am 22 and I am looking for a roommate in Mell 361 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cjohnson424', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Johnson', 'Hi! My name is Caleb. I am 24 and I am looking for a roommate in 1516 596 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/72.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbrown425', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Brown', 'Hi! My name is Jason. I am 22 and I am looking for a roommate in Vandiver 391 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('msauce426', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Sauce', 'Hi! My name is Marcus. I am 22 and I am looking for a roommate in Mell 452 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('opot427', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Pot', 'Hi! My name is Onika. I am 24 and I am looking for a roommate in Sorority House 330 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ztaylor428', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Taylor', 'Hi! My name is Zoe. I am 21 and I am looking for a roommate in Creswell 583 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mfat429', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Fat', 'Hi! My name is Marcus. I am 22 and I am looking for a roommate in Rooker 455 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mfat430', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Fat', 'Hi! My name is Miles. I am 19 and I am looking for a roommate in The Reserve 693 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwoobles431', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Woobles', 'Hi! My name is Bella. I am 19 and I am looking for a roommate in Myers 191 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bjones432', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Blessing', 'Jones', 'Hi! My name is Blessing. I am 19 and I am looking for a roommate in The Connections 255 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nmoore433', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Moore', 'Hi! My name is Nathan. I am 24 and I am looking for a roommate in Mell 894 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/7.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssarr434', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Sarr', 'Hi! My name is Secret. I am 21 and I am looking for a roommate in The Reserve 776 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sjohnson435', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Johnson', 'Hi! My name is Sebastian. I am 18 and I am looking for a roommate in Sorority House 191 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/72.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('xbaker436', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Xavier', 'Baker', 'Hi! My name is Xavier. I am 24 and I am looking for a roommate in Myers 427 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jstanley437', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Stanley', 'Hi! My name is Jameson. I am 21 and I am looking for a roommate in Rooker 752 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssmith438', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Smith', 'Hi! My name is Sebastian. I am 21 and I am looking for a roommate in Mell 621 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('xwilliams439', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Xavier', 'Williams', 'Hi! My name is Xavier. I am 21 and I am looking for a roommate in Sorority House 556 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bsauce440', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Sauce', 'Hi! My name is Bella. I am 24 and I am looking for a roommate in The Connections 244 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/59.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bhoney441', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Honey', 'Hi! My name is Bryson. I am 21 and I am looking for a roommate in Myers 338 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cwilson442', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Wilson', 'Hi! My name is Chinmay. I am 22 and I am looking for a roommate in Creswell 164 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bboil443', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Blessing', 'Boil', 'Hi! My name is Blessing. I am 21 and I am looking for a roommate in Creswell 305 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spaper444', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Paper', 'Hi! My name is Sebastian. I am 23 and I am looking for a roommate in Payne 238 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/78.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btexas445', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Texas', 'Hi! My name is Bina. I am 23 and I am looking for a roommate in Creswell 422 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ctexas446', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Texas', 'Hi! My name is Chinmay. I am 19 and I am looking for a roommate in Myers 838 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hbrown447', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Brown', 'Hi! My name is Hannah. I am 19 and I am looking for a roommate in Vandiver 204 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhoney448', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Honey', 'Hi! My name is Justin. I am 20 and I am looking for a roommate in Vandiver 800 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/17.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jgeorgia449', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Georgia', 'Hi! My name is Julian. I am 20 and I am looking for a roommate in The Connections 776 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bamin450', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Amin', 'Hi! My name is Brock. I am 21 and I am looking for a roommate in Sorority House 287 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('asauce451', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Sauce', 'Hi! My name is Aarya. I am 24 and I am looking for a roommate in Myers 525 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/83.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bdavis452', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Davis', 'Hi! My name is Basanta. I am 21 and I am looking for a roommate in Myers 823 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sjohnson453', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Johnson', 'Hi! My name is Stella. I am 20 and I am looking for a roommate in Sorority House 703 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ooil454', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Oil', 'Hi! My name is Onika. I am 22 and I am looking for a roommate in The Connections 806 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/69.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ghoney455', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Honey', 'Hi! My name is Gabriel. I am 18 and I am looking for a roommate in Payne 642 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ctaylor456', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Taylor', 'Hi! My name is Carson. I am 21 and I am looking for a roommate in Vandiver 302 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jwilson457', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Wilson', 'Hi! My name is Jaquan. I am 23 and I am looking for a roommate in Payne 722 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smirror458', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Mirror', 'Hi! My name is Stella. I am 18 and I am looking for a roommate in Mell 590 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ckardashian459', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Kardashian', 'Hi! My name is Corella. I am 18 and I am looking for a roommate in The Reserve 161 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btaylor460', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Taylor', 'Hi! My name is Binta. I am 22 and I am looking for a roommate in Myers 172 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/7.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rismail461', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Ismail', 'Hi! My name is Ridwaan. I am 19 and I am looking for a roommate in Rooker 810 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rmirror462', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Mirror', 'Hi! My name is Ridwaan. I am 23 and I am looking for a roommate in The Reserve 417 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbaker463', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Baker', 'Hi! My name is Julian. I am 23 and I am looking for a roommate in 1516 129 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cjohnson464', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Johnson', 'Hi! My name is Chloe. I am 20 and I am looking for a roommate in Rooker 368 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wwilliams465', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Williams', 'Hi! My name is William. I am 22 and I am looking for a roommate in Rooker 378 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('slove466', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Love', 'Hi! My name is Sophia. I am 19 and I am looking for a roommate in The Reserve 118 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker467', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Baker', 'Hi! My name is Burgers. I am 19 and I am looking for a roommate in Mell 209 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('htea468', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Tea', 'Hi! My name is Hannah. I am 18 and I am looking for a roommate in Rooker 348 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vmiller469', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Miller', 'Hi! My name is Victoria. I am 18 and I am looking for a roommate in Creswell 710 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('obaker470', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Baker', 'Hi! My name is Onika. I am 19 and I am looking for a roommate in The Reserve 161 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/97.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jalabama471', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Alabama', 'Hi! My name is Jackson. I am 21 and I am looking for a roommate in Myers 444 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jjones472', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Jones', 'Hi! My name is Justin. I am 24 and I am looking for a roommate in Myers 895 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/56.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aalabama473', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Alabama', 'Hi! My name is Amara. I am 20 and I am looking for a roommate in 1516 729 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker474', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Baker', 'Hi! My name is Bina. I am 21 and I am looking for a roommate in The Connections 774 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbrown475', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Brown', 'Hi! My name is Jameson. I am 19 and I am looking for a roommate in The Reserve 197 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dgeorgia476', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Georgia', 'Hi! My name is Diana. I am 22 and I am looking for a roommate in Payne 662 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/10.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dhoney477', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Dominic', 'Honey', 'Hi! My name is Dominic. I am 23 and I am looking for a roommate in Sorority House 160 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/79.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lhoney478', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Honey', 'Hi! My name is Leah. I am 23 and I am looking for a roommate in The Connections 112 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ngeorgia479', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Georgia', 'Hi! My name is Natalia. I am 22 and I am looking for a roommate in Payne 247 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/86.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dtaylor480', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Taylor', 'Hi! My name is Diana. I am 19 and I am looking for a roommate in The Connections 348 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('imoore481', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Moore', 'Hi! My name is Indiana. I am 22 and I am looking for a roommate in Vandiver 375 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mismail482', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Ismail', 'Hi! My name is Maya. I am 18 and I am looking for a roommate in 1516 417 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('toil483', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Oil', 'Hi! My name is Tuesday. I am 20 and I am looking for a roommate in Myers 467 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('calabama484', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Alabama', 'Hi! My name is Chloe. I am 23 and I am looking for a roommate in The Connections 849 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bclass485', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Blessing', 'Class', 'Hi! My name is Blessing. I am 20 and I am looking for a roommate in Rooker 500 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swilliams486', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Williams', 'Hi! My name is Sadie. I am 23 and I am looking for a roommate in Mell 606 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('salabama487', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Alabama', 'Hi! My name is Sami. I am 22 and I am looking for a roommate in Sorority House 306 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('malabama488', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Alabama', 'Hi! My name is Malaysia. I am 20 and I am looking for a roommate in Creswell 216 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/87.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btexas489', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Texas', 'Hi! My name is Bina. I am 23 and I am looking for a roommate in The Reserve 218 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bjohnson490', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Johnson', 'Hi! My name is Binta. I am 23 and I am looking for a roommate in 1516 816 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sbaker491', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Baker', 'Hi! My name is Sadie. I am 22 and I am looking for a roommate in Rooker 739 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ochicago492', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Chicago', 'Hi! My name is Onika. I am 23 and I am looking for a roommate in Vandiver 789 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('klove493', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Love', 'Hi! My name is Karen. I am 18 and I am looking for a roommate in The Connections 523 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gbar494', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Bar', 'Hi! My name is Gabriel. I am 22 and I am looking for a roommate in Creswell 214 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('awilson495', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Wilson', 'Hi! My name is Aarya. I am 19 and I am looking for a roommate in Rooker 162 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('moil496', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Oil', 'Hi! My name is Maya. I am 20 and I am looking for a roommate in Rooker 454 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ahibiscus497', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Hibiscus', 'Hi! My name is Arafah. I am 20 and I am looking for a roommate in Rooker 530 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amoore498', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Moore', 'Hi! My name is Avery. I am 24 and I am looking for a roommate in Mell 500 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wismail499', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Ismail', 'Hi! My name is William. I am 23 and I am looking for a roommate in Myers 852 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('akardashian500', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Kardashian', 'Hi! My name is Amara. I am 21 and I am looking for a roommate in The Connections 681 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/79.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('osauce501', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Sauce', 'Hi! My name is Onika. I am 19 and I am looking for a roommate in Sorority House 697 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/88.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bextra502', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Extra', 'Hi! My name is Brock. I am 22 and I am looking for a roommate in Myers 360 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jsauce503', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Sauce', 'Hi! My name is Jason. I am 18 and I am looking for a roommate in Creswell 294 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bamin504', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Baddie', 'Amin', 'Hi! My name is Baddie. I am 24 and I am looking for a roommate in Mell 755 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('samin505', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Shelby', 'Amin', 'Hi! My name is Shelby. I am 24 and I am looking for a roommate in Mell 184 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gtea506', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Tea', 'Hi! My name is Gabriel. I am 21 and I am looking for a roommate in Rooker 477 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssmith507', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Smith', 'Hi! My name is Secret. I am 24 and I am looking for a roommate in Sorority House 557 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ksarr508', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Sarr', 'Hi! My name is Karen. I am 20 and I am looking for a roommate in Sorority House 580 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/69.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('szimbabwe509', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Zimbabwe', 'Hi! My name is Secret. I am 20 and I am looking for a roommate in Vandiver 753 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('owoobles510', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Woobles', 'Hi! My name is Onika. I am 19 and I am looking for a roommate in Vandiver 283 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/17.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jjones511', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Jones', 'Hi! My name is Jason. I am 20 and I am looking for a roommate in Sorority House 240 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bstanley512', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Stanley', 'Hi! My name is Belcalis. I am 20 and I am looking for a roommate in Vandiver 511 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gtaylor513', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Taylor', 'Hi! My name is Glenda. I am 20 and I am looking for a roommate in Payne 582 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sstanley514', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Stanley', 'Hi! My name is Sophia. I am 18 and I am looking for a roommate in 1516 140 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cwilson515', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Wilson', 'Hi! My name is Chinmay. I am 19 and I am looking for a roommate in 1516 834 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('halabama516', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Alabama', 'Hi! My name is Hadiza. I am 18 and I am looking for a roommate in Myers 877 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/58.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cismail517', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Ismail', 'Hi! My name is Corella. I am 21 and I am looking for a roommate in Sorority House 813 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/93.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stravis518', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Travis', 'Hi! My name is Sophia. I am 18 and I am looking for a roommate in Vandiver 537 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bismail519', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Ismail', 'Hi! My name is Bryson. I am 23 and I am looking for a roommate in The Reserve 197 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('boil520', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Oil', 'Hi! My name is Binta. I am 24 and I am looking for a roommate in Creswell 572 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('noil521', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Oil', 'Hi! My name is Nadia. I am 21 and I am looking for a roommate in Rooker 559 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rkardashian522', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Kardashian', 'Hi! My name is Ruby. I am 19 and I am looking for a roommate in Myers 505 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hmoore523', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Moore', 'Hi! My name is Hunter. I am 19 and I am looking for a roommate in Myers 854 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nmoore524', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Moore', 'Hi! My name is Netra. I am 19 and I am looking for a roommate in Mell 586 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lsmith525', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Smith', 'Hi! My name is Layla. I am 22 and I am looking for a roommate in Payne 401 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/44.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jclass526', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Class', 'Hi! My name is Juancarlos. I am 24 and I am looking for a roommate in Creswell 465 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/14.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssauce527', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Shelby', 'Sauce', 'Hi! My name is Shelby. I am 18 and I am looking for a roommate in Creswell 739 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('skardashian528', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Kardashian', 'Hi! My name is Sebastian. I am 21 and I am looking for a roommate in Creswell 308 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/51.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stexas529', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Texas', 'Hi! My name is Sophia. I am 18 and I am looking for a roommate in Payne 379 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mwilliams530', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Williams', 'Hi! My name is Malaysia. I am 19 and I am looking for a roommate in Sorority House 178 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbrown531', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Brown', 'Hi! My name is Bella. I am 20 and I am looking for a roommate in Payne 690 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/44.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('malabama532', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Alabama', 'Hi! My name is Malaysia. I am 20 and I am looking for a roommate in Sorority House 446 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwilson533', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Wilson', 'Hi! My name is Bina. I am 20 and I am looking for a roommate in Sorority House 794 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ezimbabwe534', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Zimbabwe', 'Hi! My name is Elijah. I am 20 and I am looking for a roommate in Sorority House 335 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zbrown535', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Brown', 'Hi! My name is Zoe. I am 19 and I am looking for a roommate in The Reserve 391 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mpot536', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Pot', 'Hi! My name is Maya. I am 19 and I am looking for a roommate in Creswell 844 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/59.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sismail537', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Ismail', 'Hi! My name is Stella. I am 19 and I am looking for a roommate in The Reserve 636 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hsarr538', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Sarr', 'Hi! My name is Hannah. I am 18 and I am looking for a roommate in The Connections 796 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cwilliams539', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Williams', 'Hi! My name is Corella. I am 22 and I am looking for a roommate in Mell 809 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('phibiscus540', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Peyton', 'Hibiscus', 'Hi! My name is Peyton. I am 18 and I am looking for a roommate in Payne 360 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhibiscus541', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Hibiscus', 'Hi! My name is Jaquan. I am 22 and I am looking for a roommate in Creswell 820 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('czimbabwe542', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Zimbabwe', 'Hi! My name is Corella. I am 20 and I am looking for a roommate in The Connections 468 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cmoore543', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Moore', 'Hi! My name is Corella. I am 18 and I am looking for a roommate in Payne 366 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('awoobles544', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Woobles', 'Hi! My name is Aarya. I am 19 and I am looking for a roommate in Myers 608 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kkardashian545', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Kardashian', 'Hi! My name is Kimberly. I am 21 and I am looking for a roommate in The Reserve 226 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/9.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mstanley546', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Stanley', 'Hi! My name is Maya. I am 18 and I am looking for a roommate in Creswell 637 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hzimbabwe547', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Zimbabwe', 'Hi! My name is Hunter. I am 23 and I am looking for a roommate in 1516 449 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmoore548', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Moore', 'Hi! My name is Belcalis. I am 20 and I am looking for a roommate in The Connections 114 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mwilson549', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Wilson', 'Hi! My name is Marcus. I am 20 and I am looking for a roommate in 1516 337 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jstanley550', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Stanley', 'Hi! My name is Jason. I am 22 and I am looking for a roommate in Myers 365 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bpaper551', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Paper', 'Hi! My name is Basanta. I am 23 and I am looking for a roommate in Sorority House 619 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mjones552', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Jones', 'Hi! My name is Maya. I am 22 and I am looking for a roommate in Creswell 146 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bchicago553', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Chicago', 'Hi! My name is Benen. I am 21 and I am looking for a roommate in 1516 695 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/87.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('calabama554', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Alabama', 'Hi! My name is Corella. I am 24 and I am looking for a roommate in Payne 452 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dpaper555', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Dominic', 'Paper', 'Hi! My name is Dominic. I am 20 and I am looking for a roommate in Myers 647 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sclass556', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Class', 'Hi! My name is Sami. I am 18 and I am looking for a roommate in Sorority House 360 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bstanley557', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Baddie', 'Stanley', 'Hi! My name is Baddie. I am 21 and I am looking for a roommate in Rooker 709 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia558', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Georgia', 'Hi! My name is Basanta. I am 24 and I am looking for a roommate in Creswell 786 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/72.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bchicago559', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Chicago', 'Hi! My name is Belcalis. I am 19 and I am looking for a roommate in Vandiver 446 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smoore560', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Moore', 'Hi! My name is Sophia. I am 21 and I am looking for a roommate in Payne 187 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bclass561', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Class', 'Hi! My name is Belcalis. I am 22 and I am looking for a roommate in Myers 446 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/58.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sdavis562', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Davis', 'Hi! My name is Sami. I am 24 and I am looking for a roommate in Sorority House 795 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('iismail563', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Ismail', 'Hi! My name is Indiana. I am 19 and I am looking for a roommate in Vandiver 541 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('balabama564', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brooklyn', 'Alabama', 'Hi! My name is Brooklyn. I am 19 and I am looking for a roommate in Sorority House 515 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nlove565', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Love', 'Hi! My name is Natalia. I am 21 and I am looking for a roommate in Payne 829 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vclass566', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Class', 'Hi! My name is Victoria. I am 18 and I am looking for a roommate in 1516 152 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ofat567', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Fat', 'Hi! My name is Onika. I am 21 and I am looking for a roommate in Mell 287 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwoobles568', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Woobles', 'Hi! My name is Bella. I am 24 and I am looking for a roommate in The Connections 368 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhoney569', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Honey', 'Hi! My name is Juancarlos. I am 22 and I am looking for a roommate in The Connections 178 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spot570', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Pot', 'Hi! My name is Sophia. I am 19 and I am looking for a roommate in Rooker 254 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/83.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('isarr571', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Sarr', 'Hi! My name is Isaiah. I am 18 and I am looking for a roommate in The Connections 469 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('boil572', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Oil', 'Hi! My name is Benen. I am 23 and I am looking for a roommate in The Reserve 624 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dsarr573', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Dominic', 'Sarr', 'Hi! My name is Dominic. I am 21 and I am looking for a roommate in Rooker 551 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bkardashian574', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Kardashian', 'Hi! My name is Burgers. I am 21 and I am looking for a roommate in The Reserve 693 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('eismail575', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Ismail', 'Hi! My name is Evelyn. I am 19 and I am looking for a roommate in Vandiver 738 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssmith576', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Smith', 'Hi! My name is Sophia. I am 20 and I am looking for a roommate in Creswell 347 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gtaylor577', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Taylor', 'Hi! My name is Gabriel. I am 19 and I am looking for a roommate in The Reserve 157 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jamin578', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Amin', 'Hi! My name is Jason. I am 20 and I am looking for a roommate in Sorority House 601 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sclass579', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Class', 'Hi! My name is Stella. I am 19 and I am looking for a roommate in Mell 557 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('awilliams580', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Williams', 'Hi! My name is Autumn. I am 24 and I am looking for a roommate in Creswell 360 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('balabama581', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Blessing', 'Alabama', 'Hi! My name is Blessing. I am 21 and I am looking for a roommate in Vandiver 150 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stravis582', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Travis', 'Hi! My name is Sadie. I am 19 and I am looking for a roommate in The Reserve 357 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('okardashian583', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Kardashian', 'Hi! My name is Onika. I am 18 and I am looking for a roommate in Sorority House 510 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('noil584', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Oil', 'Hi! My name is Nadia. I am 18 and I am looking for a roommate in Creswell 698 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/1.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nsmith585', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Smith', 'Hi! My name is Netra. I am 21 and I am looking for a roommate in 1516 739 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cismail586', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Ismail', 'Hi! My name is Carson. I am 22 and I am looking for a roommate in Myers 276 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aoil587', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Oil', 'Hi! My name is Aaron. I am 22 and I am looking for a roommate in The Reserve 279 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/83.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vhibiscus588', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Hibiscus', 'Hi! My name is Victoria. I am 20 and I am looking for a roommate in Sorority House 338 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zkardashian589', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Kardashian', 'Hi! My name is Zoe. I am 24 and I am looking for a roommate in Rooker 201 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('adavis590', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Davis', 'Hi! My name is Aarya. I am 20 and I am looking for a roommate in Myers 491 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('apuccini591', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Puccini', 'Hi! My name is Autumn. I am 18 and I am looking for a roommate in 1516 174 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lwoobles592', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Woobles', 'Hi! My name is Leah. I am 21 and I am looking for a roommate in Rooker 760 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/37.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cclass593', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Class', 'Hi! My name is Carson. I am 18 and I am looking for a roommate in Sorority House 170 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ataylor594', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Taylor', 'Hi! My name is Aaron. I am 20 and I am looking for a roommate in Myers 225 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('msauce595', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Sauce', 'Hi! My name is Maya. I am 21 and I am looking for a roommate in Mell 338 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kgeorgia596', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Georgia', 'Hi! My name is Karen. I am 18 and I am looking for a roommate in Myers 209 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lalabama597', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Alabama', 'Hi! My name is Leah. I am 24 and I am looking for a roommate in Mell 884 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bismail598', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Ismail', 'Hi! My name is Burgers. I am 19 and I am looking for a roommate in 1516 227 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kclass599', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Class', 'Hi! My name is Karen. I am 21 and I am looking for a roommate in Mell 732 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('twilson600', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Wilson', 'Hi! My name is Trey. I am 22 and I am looking for a roommate in Myers 536 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('eamin601', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Amin', 'Hi! My name is Elijah. I am 20 and I am looking for a roommate in Payne 817 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dsauce602', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Sauce', 'Hi! My name is Diana. I am 20 and I am looking for a roommate in Rooker 418 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bamin603', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Amin', 'Hi! My name is Binta. I am 22 and I am looking for a roommate in Sorority House 431 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jwilliams604', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Williams', 'Hi! My name is Jameson. I am 21 and I am looking for a roommate in Mell 236 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/93.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbaker605', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Baker', 'Hi! My name is Jackson. I am 24 and I am looking for a roommate in The Connections 831 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dbaker606', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Dominic', 'Baker', 'Hi! My name is Dominic. I am 20 and I am looking for a roommate in Rooker 892 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lalabama607', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Alabama', 'Hi! My name is Layla. I am 22 and I am looking for a roommate in 1516 356 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbar608', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Bar', 'Hi! My name is Belcalis. I am 24 and I am looking for a roommate in The Connections 754 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amoore609', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Moore', 'Hi! My name is Avery. I am 24 and I am looking for a roommate in Payne 637 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/79.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ajones610', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Jones', 'Hi! My name is Avery. I am 21 and I am looking for a roommate in The Reserve 525 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sextra611', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Extra', 'Hi! My name is Sami. I am 18 and I am looking for a roommate in Creswell 488 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('eclass612', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Class', 'Hi! My name is Evelyn. I am 19 and I am looking for a roommate in Mell 349 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/69.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('moil613', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Oil', 'Hi! My name is Miles. I am 21 and I am looking for a roommate in Creswell 500 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btexas614', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Texas', 'Hi! My name is Burgers. I am 22 and I am looking for a roommate in The Reserve 822 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mjones615', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Jones', 'Hi! My name is Marcus. I am 19 and I am looking for a roommate in Sorority House 334 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nwilson616', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Wilson', 'Hi! My name is Nora. I am 20 and I am looking for a roommate in 1516 506 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amirror617', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Mirror', 'Hi! My name is Arafah. I am 22 and I am looking for a roommate in Mell 222 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dtea618', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Tea', 'Hi! My name is Diana. I am 20 and I am looking for a roommate in Payne 236 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vmirror619', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Mirror', 'Hi! My name is Victoria. I am 19 and I am looking for a roommate in Rooker 652 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ltaylor620', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Taylor', 'Hi! My name is Leah. I am 22 and I am looking for a roommate in Payne 484 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('htexas621', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Texas', 'Hi! My name is Hannah. I am 22 and I am looking for a roommate in Mell 847 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/97.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dhibiscus622', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Dominic', 'Hibiscus', 'Hi! My name is Dominic. I am 22 and I am looking for a roommate in Vandiver 699 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('salabama623', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Alabama', 'Hi! My name is Sami. I am 22 and I am looking for a roommate in The Connections 204 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jkardashian624', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Kardashian', 'Hi! My name is Jameson. I am 18 and I am looking for a roommate in Rooker 653 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lmirror625', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Mirror', 'Hi! My name is Leo. I am 22 and I am looking for a roommate in The Connections 721 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/66.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vpot626', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Pot', 'Hi! My name is Victoria. I am 19 and I am looking for a roommate in Mell 274 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/37.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wgeorgia627', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Georgia', 'Hi! My name is William. I am 20 and I am looking for a roommate in 1516 222 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('schicago628', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Chicago', 'Hi! My name is Stella. I am 24 and I am looking for a roommate in Creswell 188 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jamin629', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Amin', 'Hi! My name is Jamie. I am 21 and I am looking for a roommate in The Connections 573 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/78.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rextra630', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Extra', 'Hi! My name is Ridwaan. I am 24 and I am looking for a roommate in The Reserve 228 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kbrown631', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Brown', 'Hi! My name is Kimberly. I am 21 and I am looking for a roommate in Myers 687 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mmirror632', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Mirror', 'Hi! My name is Miles. I am 20 and I am looking for a roommate in Creswell 710 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/7.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia633', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Georgia', 'Hi! My name is Burgers. I am 19 and I am looking for a roommate in 1516 773 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bboil634', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Boil', 'Hi! My name is Benen. I am 21 and I am looking for a roommate in The Reserve 132 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mboil635', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Boil', 'Hi! My name is Meredith. I am 22 and I am looking for a roommate in Creswell 254 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia636', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Georgia', 'Hi! My name is Benen. I am 18 and I am looking for a roommate in Payne 634 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cpuccini637', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Puccini', 'Hi! My name is Corella. I am 24 and I am looking for a roommate in Myers 519 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/86.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ralabama638', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Alabama', 'Hi! My name is Ruby. I am 22 and I am looking for a roommate in 1516 364 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/78.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cismail639', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Ismail', 'Hi! My name is Conrad. I am 23 and I am looking for a roommate in Mell 254 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jgeorgia640', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Georgia', 'Hi! My name is Jamie. I am 21 and I am looking for a roommate in 1516 429 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btexas641', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Texas', 'Hi! My name is Basanta. I am 18 and I am looking for a roommate in Creswell 761 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/43.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hbaker642', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Baker', 'Hi! My name is Hadiza. I am 24 and I am looking for a roommate in Myers 240 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('eboil643', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Boil', 'Hi! My name is Evelyn. I am 19 and I am looking for a roommate in Mell 628 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mzimbabwe644', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Zimbabwe', 'Hi! My name is Maya. I am 22 and I am looking for a roommate in Sorority House 253 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/58.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gsmith645', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Smith', 'Hi! My name is Gabriel. I am 18 and I am looking for a roommate in The Connections 281 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vtexas646', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Texas', 'Hi! My name is Victoria. I am 19 and I am looking for a roommate in The Connections 168 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zwoobles647', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Woobles', 'Hi! My name is Zoe. I am 22 and I am looking for a roommate in Sorority House 288 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/69.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amirror648', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Mirror', 'Hi! My name is Aarya. I am 20 and I am looking for a roommate in Rooker 314 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/57.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ltaylor649', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Taylor', 'Hi! My name is Leo. I am 19 and I am looking for a roommate in The Reserve 166 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ejones650', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Elijah', 'Jones', 'Hi! My name is Elijah. I am 20 and I am looking for a roommate in Creswell 319 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker651', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Baker', 'Hi! My name is Binta. I am 23 and I am looking for a roommate in The Connections 515 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rhibiscus652', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Hibiscus', 'Hi! My name is Ruby. I am 19 and I am looking for a roommate in The Reserve 551 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/51.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntea653', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Tea', 'Hi! My name is Nora. I am 23 and I am looking for a roommate in Myers 147 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('szimbabwe654', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Zimbabwe', 'Hi! My name is Sebastian. I am 23 and I am looking for a roommate in Vandiver 817 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntea655', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Tea', 'Hi! My name is Netra. I am 20 and I am looking for a roommate in Vandiver 156 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lbrown656', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Brown', 'Hi! My name is Leah. I am 18 and I am looking for a roommate in Sorority House 822 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nstanley657', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Stanley', 'Hi! My name is Nadia. I am 21 and I am looking for a roommate in 1516 255 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cgeorgia658', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Georgia', 'Hi! My name is Carson. I am 18 and I am looking for a roommate in Rooker 125 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kmiller659', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Miller', 'Hi! My name is Kimberly. I am 23 and I am looking for a roommate in Vandiver 525 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('asarr660', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Sarr', 'Hi! My name is Amara. I am 18 and I am looking for a roommate in 1516 814 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/57.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kbaker661', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Baker', 'Hi! My name is Kimberly. I am 19 and I am looking for a roommate in Creswell 296 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/86.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('chibiscus662', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Hibiscus', 'Hi! My name is Caleb. I am 18 and I am looking for a roommate in The Reserve 300 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hclass663', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Class', 'Hi! My name is Hannah. I am 22 and I am looking for a roommate in The Reserve 450 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dismail664', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Ismail', 'Hi! My name is Diana. I am 20 and I am looking for a roommate in Vandiver 878 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('joil665', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Oil', 'Hi! My name is Jameson. I am 24 and I am looking for a roommate in Payne 310 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bfat666', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Fat', 'Hi! My name is Bina. I am 22 and I am looking for a roommate in Myers 138 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bsarr667', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Sarr', 'Hi! My name is Burgers. I am 20 and I am looking for a roommate in Sorority House 235 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia668', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Blessing', 'Georgia', 'Hi! My name is Blessing. I am 24 and I am looking for a roommate in Mell 612 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aoil669', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Oil', 'Hi! My name is Arafah. I am 23 and I am looking for a roommate in Vandiver 158 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hzimbabwe670', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hakim', 'Zimbabwe', 'Hi! My name is Hakim. I am 23 and I am looking for a roommate in The Connections 864 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ltravis671', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Travis', 'Hi! My name is Layla. I am 20 and I am looking for a roommate in 1516 643 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('imoore672', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Moore', 'Hi! My name is Isaiah. I am 24 and I am looking for a roommate in The Connections 319 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lmiller673', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Miller', 'Hi! My name is Layla. I am 21 and I am looking for a roommate in 1516 302 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/9.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dstanley674', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Stanley', 'Hi! My name is Diana. I am 19 and I am looking for a roommate in Creswell 598 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('halabama675', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Alabama', 'Hi! My name is Hadiza. I am 18 and I am looking for a roommate in Sorority House 411 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('opot676', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Pot', 'Hi! My name is Onika. I am 24 and I am looking for a roommate in Vandiver 580 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bboil677', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brooklyn', 'Boil', 'Hi! My name is Brooklyn. I am 22 and I am looking for a roommate in Myers 595 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/10.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cbar678', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Bar', 'Hi! My name is Corella. I am 20 and I am looking for a roommate in The Reserve 605 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aoil679', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Oil', 'Hi! My name is Arafah. I am 24 and I am looking for a roommate in Vandiver 481 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bpuccini680', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Puccini', 'Hi! My name is Bella. I am 19 and I am looking for a roommate in Mell 139 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bfat681', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Fat', 'Hi! My name is Basanta. I am 18 and I am looking for a roommate in Payne 609 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rtexas682', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Texas', 'Hi! My name is Ruby. I am 19 and I am looking for a roommate in Payne 854 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rsauce683', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Sauce', 'Hi! My name is Ruby. I am 18 and I am looking for a roommate in The Reserve 340 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('calabama684', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Alabama', 'Hi! My name is Caleb. I am 22 and I am looking for a roommate in Payne 879 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stexas685', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Texas', 'Hi! My name is Stella. I am 23 and I am looking for a roommate in Sorority House 437 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tjohnson686', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Johnson', 'Hi! My name is Trey. I am 20 and I am looking for a roommate in Myers 406 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmirror687', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Mirror', 'Hi! My name is Benen. I am 19 and I am looking for a roommate in 1516 377 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/9.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhibiscus688', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Hibiscus', 'Hi! My name is Jameson. I am 20 and I am looking for a roommate in Creswell 583 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jsarr689', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Sarr', 'Hi! My name is Juancarlos. I am 19 and I am looking for a roommate in Sorority House 734 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/75.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vamin690', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Amin', 'Hi! My name is Victoria. I am 23 and I am looking for a roommate in Rooker 477 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/69.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('staylor691', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Taylor', 'Hi! My name is Sami. I am 23 and I am looking for a roommate in Mell 449 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/93.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ljones692', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Jones', 'Hi! My name is Leah. I am 19 and I am looking for a roommate in Vandiver 417 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('asmith693', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Smith', 'Hi! My name is Arafah. I am 19 and I am looking for a roommate in Mell 714 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mjones694', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Jones', 'Hi! My name is Marcus. I am 24 and I am looking for a roommate in Myers 569 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/64.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zchicago695', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Chicago', 'Hi! My name is Zoe. I am 24 and I am looking for a roommate in The Reserve 544 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ptea696', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Peyton', 'Tea', 'Hi! My name is Peyton. I am 22 and I am looking for a roommate in Sorority House 890 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btea697', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Tea', 'Hi! My name is Basanta. I am 23 and I am looking for a roommate in Rooker 757 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ttaylor698', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Taylor', 'Hi! My name is Trey. I am 19 and I am looking for a roommate in The Connections 600 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmiller699', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Miller', 'Hi! My name is Burgers. I am 19 and I am looking for a roommate in Mell 136 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/60.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btea700', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brooklyn', 'Tea', 'Hi! My name is Brooklyn. I am 24 and I am looking for a roommate in Rooker 180 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sclass701', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Class', 'Hi! My name is Sophia. I am 18 and I am looking for a roommate in Myers 338 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ioil702', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Oil', 'Hi! My name is Isaiah. I am 21 and I am looking for a roommate in The Reserve 176 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jsarr703', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Sarr', 'Hi! My name is Jaquan. I am 22 and I am looking for a roommate in Payne 150 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mfat704', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Fat', 'Hi! My name is Maya. I am 18 and I am looking for a roommate in The Connections 264 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ttaylor705', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Taylor', 'Hi! My name is Trey. I am 24 and I am looking for a roommate in Rooker 503 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('camin706', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Amin', 'Hi! My name is Caleb. I am 20 and I am looking for a roommate in Vandiver 854 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('galabama707', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Alabama', 'Hi! My name is Grace. I am 22 and I am looking for a roommate in Rooker 441 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hjones708', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Jones', 'Hi! My name is Hunter. I am 24 and I am looking for a roommate in Creswell 587 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('njohnson709', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Johnson', 'Hi! My name is Netra. I am 22 and I am looking for a roommate in Myers 670 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('pkardashian710', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Peyton', 'Kardashian', 'Hi! My name is Peyton. I am 19 and I am looking for a roommate in 1516 508 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jismail711', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Ismail', 'Hi! My name is Jackson. I am 23 and I am looking for a roommate in Creswell 104 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cjones712', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Jones', 'Hi! My name is Caleb. I am 18 and I am looking for a roommate in Rooker 182 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dbaker713', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Baker', 'Hi! My name is Diana. I am 18 and I am looking for a roommate in The Reserve 606 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kbrown714', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Brown', 'Hi! My name is Karen. I am 22 and I am looking for a roommate in The Connections 890 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tchicago715', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Chicago', 'Hi! My name is Tuesday. I am 18 and I am looking for a roommate in Creswell 664 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hbrown716', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hakim', 'Brown', 'Hi! My name is Hakim. I am 19 and I am looking for a roommate in Creswell 158 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('choney717', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Honey', 'Hi! My name is Corella. I am 23 and I am looking for a roommate in Mell 353 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('skardashian718', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Kardashian', 'Hi! My name is Sami. I am 22 and I am looking for a roommate in The Connections 632 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('czimbabwe719', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Zimbabwe', 'Hi! My name is Chloe. I am 23 and I am looking for a roommate in Myers 840 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jgeorgia720', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Georgia', 'Hi! My name is Jackson. I am 24 and I am looking for a roommate in Payne 340 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/97.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ltravis721', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Travis', 'Hi! My name is Layla. I am 22 and I am looking for a roommate in Mell 741 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssarr722', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Sarr', 'Hi! My name is Stella. I am 20 and I am looking for a roommate in Rooker 503 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hpaper723', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Paper', 'Hi! My name is Hunter. I am 22 and I am looking for a roommate in Mell 144 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('csauce724', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Sauce', 'Hi! My name is Caleb. I am 18 and I am looking for a roommate in Payne 340 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/9.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jextra725', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Extra', 'Hi! My name is Jackson. I am 21 and I am looking for a roommate in Mell 401 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jgeorgia726', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Georgia', 'Hi! My name is Justin. I am 23 and I am looking for a roommate in The Connections 134 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmirror727', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Mirror', 'Hi! My name is Binta. I am 22 and I am looking for a roommate in 1516 404 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/56.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbar728', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Bar', 'Hi! My name is Bella. I am 20 and I am looking for a roommate in Creswell 711 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('chibiscus729', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Hibiscus', 'Hi! My name is Conrad. I am 23 and I am looking for a roommate in Rooker 199 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nbrown730', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Brown', 'Hi! My name is Nathan. I am 18 and I am looking for a roommate in Mell 851 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/97.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker731', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Blessing', 'Baker', 'Hi! My name is Blessing. I am 22 and I am looking for a roommate in Myers 172 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cmoore732', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Moore', 'Hi! My name is Corella. I am 21 and I am looking for a roommate in Vandiver 776 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rsauce733', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Sauce', 'Hi! My name is Ridwaan. I am 24 and I am looking for a roommate in Sorority House 615 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swilson734', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Wilson', 'Hi! My name is Sophia. I am 21 and I am looking for a roommate in Myers 330 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vhoney735', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Honey', 'Hi! My name is Victoria. I am 20 and I am looking for a roommate in Payne 457 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('shoney736', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Honey', 'Hi! My name is Sebastian. I am 19 and I am looking for a roommate in Creswell 359 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/59.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('atravis737', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Travis', 'Hi! My name is Amara. I am 19 and I am looking for a roommate in Payne 178 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('azimbabwe738', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Zimbabwe', 'Hi! My name is Avery. I am 22 and I am looking for a roommate in Sorority House 715 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mismail739', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Ismail', 'Hi! My name is Meredith. I am 22 and I am looking for a roommate in The Connections 279 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('skardashian740', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Kardashian', 'Hi! My name is Sadie. I am 19 and I am looking for a roommate in Vandiver 452 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('abrown741', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Adrian', 'Brown', 'Hi! My name is Adrian. I am 24 and I am looking for a roommate in Sorority House 557 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtea742', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Tea', 'Hi! My name is Jackson. I am 18 and I am looking for a roommate in Creswell 760 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gsarr743', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Sarr', 'Hi! My name is Grace. I am 18 and I am looking for a roommate in Vandiver 475 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('xboil744', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Xavier', 'Boil', 'Hi! My name is Xavier. I am 20 and I am looking for a roommate in Sorority House 841 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sstanley745', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Stanley', 'Hi! My name is Sami. I am 24 and I am looking for a roommate in Rooker 896 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('apuccini746', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Puccini', 'Hi! My name is Arafah. I am 24 and I am looking for a roommate in Myers 187 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mmirror747', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Mirror', 'Hi! My name is Maya. I am 21 and I am looking for a roommate in Mell 496 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('epuccini748', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Puccini', 'Hi! My name is Evelyn. I am 20 and I am looking for a roommate in The Connections 788 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/16.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('csauce749', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Sauce', 'Hi! My name is Caleb. I am 24 and I am looking for a roommate in Creswell 765 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('abrown750', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Brown', 'Hi! My name is Amara. I am 23 and I am looking for a roommate in 1516 494 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/86.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lalabama751', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Alabama', 'Hi! My name is Leah. I am 19 and I am looking for a roommate in Creswell 400 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('joil752', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Oil', 'Hi! My name is Jameson. I am 20 and I am looking for a roommate in 1516 448 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mbar753', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Bar', 'Hi! My name is Maya. I am 22 and I am looking for a roommate in Sorority House 458 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kbaker754', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Baker', 'Hi! My name is Karen. I am 19 and I am looking for a roommate in Payne 736 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jbrown755', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Brown', 'Hi! My name is Jaquan. I am 24 and I am looking for a roommate in Mell 404 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/26.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('balabama756', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Alabama', 'Hi! My name is Bina. I am 23 and I am looking for a roommate in Payne 732 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('goil757', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Oil', 'Hi! My name is Glenda. I am 18 and I am looking for a roommate in Rooker 900 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ntexas758', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Texas', 'Hi! My name is Natalia. I am 20 and I am looking for a roommate in Myers 769 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hsauce759', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Sauce', 'Hi! My name is Hunter. I am 20 and I am looking for a roommate in Myers 344 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('schicago760', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Chicago', 'Hi! My name is Sophia. I am 24 and I am looking for a roommate in Vandiver 897 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker761', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Baker', 'Hi! My name is Brock. I am 24 and I am looking for a roommate in The Connections 445 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/44.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ooil762', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Oil', 'Hi! My name is Onika. I am 21 and I am looking for a roommate in Creswell 766 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmoore763', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Moore', 'Hi! My name is Brock. I am 19 and I am looking for a roommate in Payne 212 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aclass764', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Class', 'Hi! My name is Autumn. I am 21 and I am looking for a roommate in Rooker 545 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aismail765', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Ismail', 'Hi! My name is Aaron. I am 18 and I am looking for a roommate in Rooker 524 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('achicago766', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Chicago', 'Hi! My name is Avery. I am 20 and I am looking for a roommate in Mell 431 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/97.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btravis767', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Travis', 'Hi! My name is Brock. I am 18 and I am looking for a roommate in The Reserve 381 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('vwoobles768', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Victoria', 'Woobles', 'Hi! My name is Victoria. I am 18 and I am looking for a roommate in Mell 518 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/81.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cfat769', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Fat', 'Hi! My name is Carson. I am 18 and I am looking for a roommate in 1516 178 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mpot770', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Pot', 'Hi! My name is Miles. I am 20 and I am looking for a roommate in Creswell 254 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btaylor771', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Taylor', 'Hi! My name is Bryson. I am 23 and I am looking for a roommate in The Connections 233 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hfat772', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Fat', 'Hi! My name is Hunter. I am 19 and I am looking for a roommate in Payne 149 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/72.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wwilliams773', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Williams', 'Hi! My name is William. I am 23 and I am looking for a roommate in Rooker 588 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ageorgia774', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Georgia', 'Hi! My name is Arafah. I am 22 and I am looking for a roommate in Payne 282 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ojones775', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Jones', 'Hi! My name is Onika. I am 18 and I am looking for a roommate in Myers 893 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bhoney776', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Honey', 'Hi! My name is Bina. I am 20 and I am looking for a roommate in Sorority House 630 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/8.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nmiller777', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Miller', 'Hi! My name is Nathan. I am 22 and I am looking for a roommate in Rooker 590 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssauce778', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Sauce', 'Hi! My name is Sophia. I am 18 and I am looking for a roommate in Sorority House 574 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dtea779', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Tea', 'Hi! My name is Diana. I am 21 and I am looking for a roommate in The Connections 377 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rtea780', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Tea', 'Hi! My name is Ruby. I am 24 and I am looking for a roommate in Mell 484 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/92.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dbar781', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Bar', 'Hi! My name is Diana. I am 19 and I am looking for a roommate in Rooker 863 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hkardashian782', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Kardashian', 'Hi! My name is Hadiza. I am 24 and I am looking for a roommate in 1516 666 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bpot783', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Pot', 'Hi! My name is Burgers. I am 19 and I am looking for a roommate in Rooker 235 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('asmith784', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Smith', 'Hi! My name is Aarya. I am 24 and I am looking for a roommate in The Reserve 801 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('coil785', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Oil', 'Hi! My name is Chloe. I am 18 and I am looking for a roommate in Payne 213 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('boil786', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bryson', 'Oil', 'Hi! My name is Bryson. I am 20 and I am looking for a roommate in Payne 259 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/97.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmirror787', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Mirror', 'Hi! My name is Burgers. I am 20 and I am looking for a roommate in Mell 649 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dhoney788', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Honey', 'Hi! My name is Diana. I am 18 and I am looking for a roommate in Sorority House 801 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/43.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bboil789', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Boil', 'Hi! My name is Bella. I am 18 and I am looking for a roommate in Mell 869 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nlove790', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Love', 'Hi! My name is Nadia. I am 18 and I am looking for a roommate in 1516 847 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hoil791', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Oil', 'Hi! My name is Hunter. I am 19 and I am looking for a roommate in The Reserve 311 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/8.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sbaker792', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Baker', 'Hi! My name is Sami. I am 24 and I am looking for a roommate in Myers 861 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aismail793', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Ismail', 'Hi! My name is Autumn. I am 18 and I am looking for a roommate in Payne 185 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dalabama794', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Alabama', 'Hi! My name is Diana. I am 19 and I am looking for a roommate in Myers 414 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gwilson795', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Wilson', 'Hi! My name is Glenda. I am 19 and I am looking for a roommate in Mell 282 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/7.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nsarr796', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Sarr', 'Hi! My name is Natalia. I am 22 and I am looking for a roommate in The Connections 279 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ctea797', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Tea', 'Hi! My name is Conrad. I am 21 and I am looking for a roommate in Mell 200 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bkardashian798', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Blessing', 'Kardashian', 'Hi! My name is Blessing. I am 21 and I am looking for a roommate in 1516 548 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cfat799', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Fat', 'Hi! My name is Corella. I am 22 and I am looking for a roommate in Rooker 759 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('szimbabwe800', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Zimbabwe', 'Hi! My name is Sadie. I am 22 and I am looking for a roommate in Vandiver 219 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/75.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hsmith801', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Smith', 'Hi! My name is Hannah. I am 21 and I am looking for a roommate in Myers 867 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jfat802', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Fat', 'Hi! My name is Jackson. I am 22 and I am looking for a roommate in The Connections 418 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/9.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dtexas803', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Texas', 'Hi! My name is Diana. I am 22 and I am looking for a roommate in The Reserve 661 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/75.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rbrown804', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Brown', 'Hi! My name is Ruby. I am 18 and I am looking for a roommate in Mell 264 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/45.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smirror805', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Mirror', 'Hi! My name is Secret. I am 23 and I am looking for a roommate in Payne 463 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssarr806', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Sarr', 'Hi! My name is Sophia. I am 23 and I am looking for a roommate in Vandiver 158 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtaylor807', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Taylor', 'Hi! My name is Julian. I am 20 and I am looking for a roommate in The Reserve 384 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spot808', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Shelby', 'Pot', 'Hi! My name is Shelby. I am 20 and I am looking for a roommate in The Connections 139 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tfat809', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Fat', 'Hi! My name is Trey. I am 24 and I am looking for a roommate in Myers 569 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/56.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssauce810', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Sauce', 'Hi! My name is Sebastian. I am 20 and I am looking for a roommate in The Connections 235 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jsarr811', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Sarr', 'Hi! My name is Jamie. I am 22 and I am looking for a roommate in Myers 824 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/97.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cbaker812', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Baker', 'Hi! My name is Caleb. I am 18 and I am looking for a roommate in Rooker 769 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jmoore813', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Moore', 'Hi! My name is Jamie. I am 18 and I am looking for a roommate in Myers 762 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('awoobles814', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Woobles', 'Hi! My name is Amara. I am 24 and I am looking for a roommate in The Reserve 800 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('oboil815', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Boil', 'Hi! My name is Onika. I am 22 and I am looking for a roommate in The Connections 685 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/81.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jalabama816', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Alabama', 'Hi! My name is Jackson. I am 23 and I am looking for a roommate in The Reserve 673 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('namin817', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Amin', 'Hi! My name is Nathan. I am 19 and I am looking for a roommate in Vandiver 257 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ealabama818', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Alabama', 'Hi! My name is Evelyn. I am 19 and I am looking for a roommate in Creswell 378 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nwilliams819', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Williams', 'Hi! My name is Netra. I am 20 and I am looking for a roommate in Rooker 186 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/81.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cwilson820', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Wilson', 'Hi! My name is Carson. I am 21 and I am looking for a roommate in Vandiver 457 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aismail821', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Ismail', 'Hi! My name is Arafah. I am 18 and I am looking for a roommate in Rooker 376 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mzimbabwe822', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Zimbabwe', 'Hi! My name is Meredith. I am 23 and I am looking for a roommate in Payne 357 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/66.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spaper823', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Paper', 'Hi! My name is Sami. I am 22 and I am looking for a roommate in Rooker 429 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/22.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cfat824', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Fat', 'Hi! My name is Chinmay. I am 24 and I am looking for a roommate in Vandiver 269 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lbrown825', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Brown', 'Hi! My name is Leo. I am 24 and I am looking for a roommate in Mell 642 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('xjohnson826', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Xavier', 'Johnson', 'Hi! My name is Xavier. I am 21 and I am looking for a roommate in Mell 119 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kkardashian827', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Kardashian', 'Hi! My name is Karen. I am 21 and I am looking for a roommate in Rooker 879 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ioil828', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Oil', 'Hi! My name is Isaiah. I am 24 and I am looking for a roommate in Sorority House 302 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ikardashian829', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Kardashian', 'Hi! My name is Isaiah. I am 20 and I am looking for a roommate in Creswell 894 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('astanley830', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Stanley', 'Hi! My name is Aaron. I am 24 and I am looking for a roommate in The Reserve 704 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('akardashian831', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Kardashian', 'Hi! My name is Amara. I am 19 and I am looking for a roommate in Myers 700 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/94.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jstanley832', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Stanley', 'Hi! My name is Jamie. I am 18 and I am looking for a roommate in The Reserve 605 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/56.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('xhibiscus833', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Xavier', 'Hibiscus', 'Hi! My name is Xavier. I am 20 and I am looking for a roommate in Myers 147 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/37.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lhibiscus834', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Hibiscus', 'Hi! My name is Layla. I am 22 and I am looking for a roommate in Myers 602 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tbaker835', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Tuesday', 'Baker', 'Hi! My name is Tuesday. I am 19 and I am looking for a roommate in The Connections 238 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('poil836', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Peyton', 'Oil', 'Hi! My name is Peyton. I am 20 and I am looking for a roommate in The Connections 211 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/35.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nsauce837', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Sauce', 'Hi! My name is Netra. I am 21 and I am looking for a roommate in Vandiver 243 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jzimbabwe838', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Zimbabwe', 'Hi! My name is Jason. I am 20 and I am looking for a roommate in Sorority House 126 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btaylor839', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Taylor', 'Hi! My name is Binta. I am 23 and I am looking for a roommate in Sorority House 766 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwoobles840', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Woobles', 'Hi! My name is Burgers. I am 20 and I am looking for a roommate in Vandiver 615 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/56.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sextra841', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Extra', 'Hi! My name is Sami. I am 19 and I am looking for a roommate in Payne 261 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lbrown842', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Brown', 'Hi! My name is Layla. I am 19 and I am looking for a roommate in Vandiver 752 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ztravis843', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Travis', 'Hi! My name is Zoe. I am 23 and I am looking for a roommate in The Connections 694 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('atravis844', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Travis', 'Hi! My name is Aarya. I am 20 and I am looking for a roommate in Mell 360 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/14.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nkardashian845', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Kardashian', 'Hi! My name is Nadia. I am 24 and I am looking for a roommate in Creswell 700 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/50.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sclass846', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Class', 'Hi! My name is Sebastian. I am 21 and I am looking for a roommate in Creswell 202 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/49.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('tclass847', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Trey', 'Class', 'Hi! My name is Trey. I am 20 and I am looking for a roommate in The Connections 445 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/83.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lsmith848', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Smith', 'Hi! My name is Layla. I am 24 and I am looking for a roommate in Mell 177 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jextra849', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Extra', 'Hi! My name is Jackson. I am 19 and I am looking for a roommate in Rooker 189 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gclass850', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Class', 'Hi! My name is Grace. I am 21 and I am looking for a roommate in The Reserve 425 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jmoore851', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Moore', 'Hi! My name is Jason. I am 19 and I am looking for a roommate in Rooker 506 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nismail852', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Ismail', 'Hi! My name is Netra. I am 21 and I am looking for a roommate in The Reserve 735 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bpuccini853', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Puccini', 'Hi! My name is Binta. I am 18 and I am looking for a roommate in Payne 485 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/14.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gtea854', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Tea', 'Hi! My name is Glenda. I am 22 and I am looking for a roommate in Mell 846 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('npot855', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Pot', 'Hi! My name is Nadia. I am 21 and I am looking for a roommate in Myers 528 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/72.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mtexas856', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Meredith', 'Texas', 'Hi! My name is Meredith. I am 24 and I am looking for a roommate in Mell 399 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/93.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aclass857', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Class', 'Hi! My name is Aaron. I am 18 and I am looking for a roommate in The Reserve 220 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('spuccini858', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Puccini', 'Hi! My name is Sophia. I am 24 and I am looking for a roommate in Payne 850 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cjones859', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Corella', 'Jones', 'Hi! My name is Corella. I am 20 and I am looking for a roommate in 1516 133 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gstanley860', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Stanley', 'Hi! My name is Grace. I am 22 and I am looking for a roommate in Mell 424 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gchicago861', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Chicago', 'Hi! My name is Glenda. I am 21 and I am looking for a roommate in 1516 693 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jmoore862', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Moore', 'Hi! My name is Jaquan. I am 22 and I am looking for a roommate in Payne 789 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nmirror863', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Mirror', 'Hi! My name is Nathan. I am 19 and I am looking for a roommate in Mell 250 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbaker864', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Baker', 'Hi! My name is Bina. I am 20 and I am looking for a roommate in Sorority House 370 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bhoney865', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Honey', 'Hi! My name is Burgers. I am 24 and I am looking for a roommate in Myers 689 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/28.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nwilson866', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Wilson', 'Hi! My name is Nora. I am 24 and I am looking for a roommate in The Reserve 736 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bhibiscus867', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Hibiscus', 'Hi! My name is Burgers. I am 24 and I am looking for a roommate in Payne 498 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/41.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gjohnson868', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Johnson', 'Hi! My name is Grace. I am 22 and I am looking for a roommate in Payne 694 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwilson869', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Burgers', 'Wilson', 'Hi! My name is Burgers. I am 23 and I am looking for a roommate in Payne 416 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/58.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('joil870', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Oil', 'Hi! My name is Justin. I am 22 and I am looking for a roommate in Creswell 895 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/33.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('llove871', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Love', 'Hi! My name is Leah. I am 22 and I am looking for a roommate in Vandiver 519 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/61.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jwilson872', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Wilson', 'Hi! My name is Jamie. I am 20 and I am looking for a roommate in The Connections 302 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cpaper873', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Paper', 'Hi! My name is Chloe. I am 22 and I am looking for a roommate in Sorority House 690 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rismail874', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ridwaan', 'Ismail', 'Hi! My name is Ridwaan. I am 23 and I am looking for a roommate in The Connections 452 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kbar875', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Karen', 'Bar', 'Hi! My name is Karen. I am 21 and I am looking for a roommate in Vandiver 876 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mtaylor876', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Taylor', 'Hi! My name is Malaysia. I am 23 and I am looking for a roommate in Mell 252 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/39.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtexas877', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Texas', 'Hi! My name is Jamie. I am 24 and I am looking for a roommate in Myers 893 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nchicago878', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nathan', 'Chicago', 'Hi! My name is Nathan. I am 20 and I am looking for a roommate in Myers 788 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('skardashian879', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Kardashian', 'Hi! My name is Sophia. I am 22 and I am looking for a roommate in Rooker 429 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btaylor880', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Taylor', 'Hi! My name is Bella. I am 19 and I am looking for a roommate in Myers 144 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('idavis881', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Davis', 'Hi! My name is Indiana. I am 21 and I am looking for a roommate in Rooker 839 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jamin882', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Amin', 'Hi! My name is Jackson. I am 24 and I am looking for a roommate in The Reserve 238 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nboil883', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Boil', 'Hi! My name is Netra. I am 24 and I am looking for a roommate in Myers 604 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gmiller884', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Miller', 'Hi! My name is Grace. I am 18 and I am looking for a roommate in Creswell 715 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/38.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bfat885', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bina', 'Fat', 'Hi! My name is Bina. I am 24 and I am looking for a roommate in Vandiver 683 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sbar886', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Bar', 'Hi! My name is Sadie. I am 20 and I am looking for a roommate in Creswell 212 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hwilson887', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Wilson', 'Hi! My name is Hannah. I am 19 and I am looking for a roommate in The Connections 744 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/91.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nfat888', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Fat', 'Hi! My name is Natalia. I am 23 and I am looking for a roommate in The Reserve 671 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/75.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('joil889', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Oil', 'Hi! My name is Jackson. I am 20 and I am looking for a roommate in Sorority House 782 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aalabama890', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Alabama', 'Hi! My name is Arafah. I am 22 and I am looking for a roommate in The Connections 582 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/75.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('kstanley891', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Stanley', 'Hi! My name is Kimberly. I am 19 and I am looking for a roommate in Vandiver 257 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bbar892', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Bar', 'Hi! My name is Benen. I am 23 and I am looking for a roommate in 1516 240 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('esarr893', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Sarr', 'Hi! My name is Evelyn. I am 18 and I am looking for a roommate in Myers 892 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/69.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gamin894', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Amin', 'Hi! My name is Glenda. I am 20 and I am looking for a roommate in Vandiver 250 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jismail895', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Ismail', 'Hi! My name is Juancarlos. I am 19 and I am looking for a roommate in Payne 151 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/34.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mclass896', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Maya', 'Class', 'Hi! My name is Maya. I am 24 and I am looking for a roommate in Myers 541 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('zamin897', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Zoe', 'Amin', 'Hi! My name is Zoe. I am 23 and I am looking for a roommate in Mell 804 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/79.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bboil898', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brooklyn', 'Boil', 'Hi! My name is Brooklyn. I am 21 and I am looking for a roommate in The Connections 323 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('apot899', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Pot', 'Hi! My name is Amara. I am 23 and I am looking for a roommate in Payne 381 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/53.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jmoore900', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Moore', 'Hi! My name is Jameson. I am 22 and I am looking for a roommate in The Reserve 315 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/66.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jextra901', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Extra', 'Hi! My name is Julian. I am 20 and I am looking for a roommate in Myers 357 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hbrown902', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hannah', 'Brown', 'Hi! My name is Hannah. I am 21 and I am looking for a roommate in Mell 675 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/0.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('szimbabwe903', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Zimbabwe', 'Hi! My name is Secret. I am 18 and I am looking for a roommate in The Connections 183 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/27.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jsmith904', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Smith', 'Hi! My name is Jason. I am 24 and I am looking for a roommate in Rooker 495 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jclass905', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Class', 'Hi! My name is Jackson. I am 24 and I am looking for a roommate in Sorority House 104 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ndavis906', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Davis', 'Hi! My name is Nadia. I am 20 and I am looking for a roommate in Creswell 389 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/70.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('npaper907', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Paper', 'Hi! My name is Nadia. I am 18 and I am looking for a roommate in The Connections 547 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/59.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('amoore908', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Adrian', 'Moore', 'Hi! My name is Adrian. I am 24 and I am looking for a roommate in Creswell 114 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/94.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nbaker909', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Natalia', 'Baker', 'Hi! My name is Natalia. I am 24 and I am looking for a roommate in Myers 811 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lpaper910', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Paper', 'Hi! My name is Layla. I am 23 and I am looking for a roommate in Vandiver 224 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('itaylor911', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Isaiah', 'Taylor', 'Hi! My name is Isaiah. I am 19 and I am looking for a roommate in Creswell 205 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/52.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssarr912', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Sarr', 'Hi! My name is Stella. I am 24 and I am looking for a roommate in The Reserve 626 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/12.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aoil913', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Oil', 'Hi! My name is Arafah. I am 24 and I am looking for a roommate in Sorority House 487 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('alove914', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Love', 'Hi! My name is Aaron. I am 21 and I am looking for a roommate in Rooker 848 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/58.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mwilliams915', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Williams', 'Hi! My name is Marcus. I am 19 and I am looking for a roommate in Mell 602 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhibiscus916', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Hibiscus', 'Hi! My name is Jameson. I am 18 and I am looking for a roommate in The Connections 423 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/9.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('azimbabwe917', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Autumn', 'Zimbabwe', 'Hi! My name is Autumn. I am 21 and I am looking for a roommate in Mell 796 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/36.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ahibiscus918', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Arafah', 'Hibiscus', 'Hi! My name is Arafah. I am 19 and I am looking for a roommate in Myers 255 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/32.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btravis919', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Travis', 'Hi! My name is Basanta. I am 19 and I am looking for a roommate in Rooker 599 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jstanley920', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jamie', 'Stanley', 'Hi! My name is Jamie. I am 23 and I am looking for a roommate in Mell 494 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/10.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smiller921', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Stella', 'Miller', 'Hi! My name is Stella. I am 21 and I am looking for a roommate in Myers 506 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/29.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ssmith922', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sami', 'Smith', 'Hi! My name is Sami. I am 19 and I am looking for a roommate in Myers 747 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/13.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sbaker923', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Baker', 'Hi! My name is Secret. I am 18 and I am looking for a roommate in Vandiver 679 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/25.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gsarr924', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Sarr', 'Hi! My name is Glenda. I am 20 and I am looking for a roommate in 1516 735 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swilliams925', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Williams', 'Hi! My name is Sebastian. I am 23 and I am looking for a roommate in Rooker 798 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/90.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btaylor926', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Binta', 'Taylor', 'Hi! My name is Binta. I am 21 and I am looking for a roommate in The Connections 481 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cismail927', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Ismail', 'Hi! My name is Chloe. I am 22 and I am looking for a roommate in Mell 175 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/40.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lismail928', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Ismail', 'Hi! My name is Leo. I am 19 and I am looking for a roommate in Rooker 191 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/21.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lalabama929', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leo', 'Alabama', 'Hi! My name is Leo. I am 19 and I am looking for a roommate in Rooker 592 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('wbrown930', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'William', 'Brown', 'Hi! My name is William. I am 22 and I am looking for a roommate in Mell 253 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/67.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mclass931', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Class', 'Hi! My name is Marcus. I am 18 and I am looking for a roommate in 1516 746 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/43.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jextra932', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Extra', 'Hi! My name is Jaquan. I am 20 and I am looking for a roommate in Creswell 402 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/68.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nalabama933', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nora', 'Alabama', 'Hi! My name is Nora. I am 23 and I am looking for a roommate in The Connections 661 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lbrown934', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Brown', 'Hi! My name is Layla. I am 19 and I am looking for a roommate in Vandiver 827 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/15.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('csarr935', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Carson', 'Sarr', 'Hi! My name is Carson. I am 23 and I am looking for a roommate in Sorority House 188 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('aboil936', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Boil', 'Hi! My name is Avery. I am 20 and I am looking for a roommate in Sorority House 782 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bpaper937', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Paper', 'Hi! My name is Bella. I am 21 and I am looking for a roommate in Creswell 878 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/47.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('njones938', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Jones', 'Hi! My name is Netra. I am 23 and I am looking for a roommate in 1516 689 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/43.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('csarr939', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Sarr', 'Hi! My name is Conrad. I am 20 and I am looking for a roommate in Vandiver 174 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtea940', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Tea', 'Hi! My name is Jaquan. I am 18 and I am looking for a roommate in Mell 712 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/40.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('astanley941', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Stanley', 'Hi! My name is Amara. I am 22 and I am looking for a roommate in The Reserve 647 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gtea942', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Grace', 'Tea', 'Hi! My name is Grace. I am 22 and I am looking for a roommate in Sorority House 578 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jtravis943', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jackson', 'Travis', 'Hi! My name is Jackson. I am 19 and I am looking for a roommate in Creswell 348 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/42.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jmoore944', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jameson', 'Moore', 'Hi! My name is Jameson. I am 20 and I am looking for a roommate in Rooker 264 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ghibiscus945', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Hibiscus', 'Hi! My name is Gabriel. I am 23 and I am looking for a roommate in Sorority House 804 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('balabama946', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Alabama', 'Hi! My name is Belcalis. I am 19 and I am looking for a roommate in Myers 423 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/49.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ipuccini947', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Indiana', 'Puccini', 'Hi! My name is Indiana. I am 21 and I am looking for a roommate in 1516 206 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/18.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sjones948', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Shelby', 'Jones', 'Hi! My name is Shelby. I am 23 and I am looking for a roommate in Mell 282 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/57.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gsauce949', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Sauce', 'Hi! My name is Gabriel. I am 24 and I am looking for a roommate in Sorority House 243 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('llove950', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Leah', 'Love', 'Hi! My name is Leah. I am 22 and I am looking for a roommate in Vandiver 296 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/77.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwilson951', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Bella', 'Wilson', 'Hi! My name is Bella. I am 19 and I am looking for a roommate in Mell 715 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('dpuccini952', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Diana', 'Puccini', 'Hi! My name is Diana. I am 23 and I am looking for a roommate in 1516 221 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/30.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ataylor953', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aaron', 'Taylor', 'Hi! My name is Aaron. I am 20 and I am looking for a roommate in Myers 235 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/82.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mwoobles954', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Woobles', 'Hi! My name is Marcus. I am 19 and I am looking for a roommate in Vandiver 608 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/31.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jdavis955', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Julian', 'Davis', 'Hi! My name is Julian. I am 18 and I am looking for a roommate in Rooker 394 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/8.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('omirror956', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Onika', 'Mirror', 'Hi! My name is Onika. I am 20 and I am looking for a roommate in 1516 177 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/5.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gsauce957', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Gabriel', 'Sauce', 'Hi! My name is Gabriel. I am 24 and I am looking for a roommate in The Connections 431 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/48.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('staylor958', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Shelby', 'Taylor', 'Hi! My name is Shelby. I am 19 and I am looking for a roommate in Rooker 107 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/59.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jalabama959', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Juancarlos', 'Alabama', 'Hi! My name is Juancarlos. I am 19 and I am looking for a roommate in Mell 729 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/4.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('smiller960', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Shelby', 'Miller', 'Hi! My name is Shelby. I am 23 and I am looking for a roommate in Mell 880 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('estanley961', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Evelyn', 'Stanley', 'Hi! My name is Evelyn. I am 20 and I am looking for a roommate in 1516 172 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bwilliams962', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Williams', 'Hi! My name is Basanta. I am 22 and I am looking for a roommate in Sorority House 164 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/95.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bzimbabwe963', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Zimbabwe', 'Hi! My name is Basanta. I am 18 and I am looking for a roommate in Payne 782 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/37.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('joil964', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jason', 'Oil', 'Hi! My name is Jason. I am 20 and I am looking for a roommate in Sorority House 252 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/84.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('gbar965', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Glenda', 'Bar', 'Hi! My name is Glenda. I am 24 and I am looking for a roommate in Mell 425 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/55.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hfat966', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hunter', 'Fat', 'Hi! My name is Hunter. I am 24 and I am looking for a roommate in Creswell 291 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/61.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mpot967', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Pot', 'Hi! My name is Malaysia. I am 24 and I am looking for a roommate in The Reserve 346 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/19.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('csauce968', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chloe', 'Sauce', 'Hi! My name is Chloe. I am 21 and I am looking for a roommate in Creswell 314 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/44.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('apaper969', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Aarya', 'Paper', 'Hi! My name is Aarya. I am 22 and I am looking for a roommate in Creswell 730 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/6.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mlove970', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Marcus', 'Love', 'Hi! My name is Marcus. I am 18 and I am looking for a roommate in Payne 719 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/56.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jchicago971', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Jaquan', 'Chicago', 'Hi! My name is Jaquan. I am 18 and I am looking for a roommate in 1516 491 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/54.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('rzimbabwe972', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Ruby', 'Zimbabwe', 'Hi! My name is Ruby. I am 20 and I am looking for a roommate in Creswell 799 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/99.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('khibiscus973', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Hibiscus', 'Hi! My name is Kimberly. I am 20 and I am looking for a roommate in Vandiver 848 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/96.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mstanley974', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Miles', 'Stanley', 'Hi! My name is Miles. I am 23 and I am looking for a roommate in Payne 899 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bstanley975', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Basanta', 'Stanley', 'Hi! My name is Basanta. I am 20 and I am looking for a roommate in Myers 380 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cwilson976', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Wilson', 'Hi! My name is Chinmay. I am 19 and I am looking for a roommate in Vandiver 179 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/76.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('nwilson977', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Netra', 'Wilson', 'Hi! My name is Netra. I am 24 and I am looking for a roommate in The Connections 493 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/8.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cboil978', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Chinmay', 'Boil', 'Hi! My name is Chinmay. I am 20 and I am looking for a roommate in Sorority House 594 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/73.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('lismail979', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Layla', 'Ismail', 'Hi! My name is Layla. I am 24 and I am looking for a roommate in Rooker 816 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/24.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('akardashian980', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Avery', 'Kardashian', 'Hi! My name is Avery. I am 19 and I am looking for a roommate in Mell 607 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/74.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sdavis981', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Davis', 'Hi! My name is Sophia. I am 23 and I am looking for a roommate in The Reserve 225 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/46.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('hhoney982', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Hadiza', 'Honey', 'Hi! My name is Hadiza. I am 24 and I am looking for a roommate in The Reserve 782 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/63.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('jhoney983', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Justin', 'Honey', 'Hi! My name is Justin. I am 23 and I am looking for a roommate in Myers 664 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/62.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('boil984', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Oil', 'Hi! My name is Belcalis. I am 24 and I am looking for a roommate in Creswell 475 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/71.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('mlove985', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Malaysia', 'Love', 'Hi! My name is Malaysia. I am 20 and I am looking for a roommate in Rooker 829 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/11.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('swilliams986', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Secret', 'Williams', 'Hi! My name is Secret. I am 20 and I am looking for a roommate in Creswell 722 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bmiller987', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Miller', 'Hi! My name is Brock. I am 22 and I am looking for a roommate in Sorority House 314 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/40.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ageorgia988', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Amara', 'Georgia', 'Hi! My name is Amara. I am 18 and I am looking for a roommate in Sorority House 862 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/23.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ksauce989', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Kimberly', 'Sauce', 'Hi! My name is Kimberly. I am 21 and I am looking for a roommate in Mell 319 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/65.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('ndavis990', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Nadia', 'Davis', 'Hi! My name is Nadia. I am 19 and I am looking for a roommate in The Reserve 554 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/2.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('stexas991', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sophia', 'Texas', 'Hi! My name is Sophia. I am 21 and I am looking for a roommate in Mell 296 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/43.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bgeorgia992', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Georgia', 'Hi! My name is Belcalis. I am 20 and I am looking for a roommate in The Reserve 657 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/89.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cextra993', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Conrad', 'Extra', 'Hi! My name is Conrad. I am 23 and I am looking for a roommate in The Connections 769 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/10.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('btravis994', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Brock', 'Travis', 'Hi! My name is Brock. I am 21 and I am looking for a roommate in Mell 755 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/80.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('cjones995', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Caleb', 'Jones', 'Hi! My name is Caleb. I am 20 and I am looking for a roommate in Mell 878 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/98.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('schicago996', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sadie', 'Chicago', 'Hi! My name is Sadie. I am 19 and I am looking for a roommate in 1516 650 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/20.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bsmith997', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Belcalis', 'Smith', 'Hi! My name is Belcalis. I am 21 and I am looking for a roommate in Creswell 791 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/85.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('bextra998', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Benen', 'Extra', 'Hi! My name is Benen. I am 21 and I am looking for a roommate in Rooker 511 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/women/57.jpg');
INSERT INTO user (username, password, firstName, lastName, description, imageUrl) VALUES ('sgeorgia999', '$2a$10$K8ADzo9kF73cZZcWL1OlL.liMBmQraMU8vP4gFy4MlK.UGUR7Slke', 'Sebastian', 'Georgia', 'Hi! My name is Sebastian. I am 24 and I am looking for a roommate in Mell 352 this Fall. Hit me up!', 'https://randomuser.me/api/portraits/men/3.jpg');

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (913, 764, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 1);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (858, 721, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 2);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (958, 590, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 3);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (298, 504, 'Very disappointed with the how inconsiderate they were.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 4);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (688, 700, 'Outstanding service! Highly recommend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 5);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (465, 445, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 6);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 6);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 6);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (855, 745, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 7);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 7);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 7);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (948, 119, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 8);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 8);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 8);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (844, 919, 'Everything was fine until they tried to steal my boyfriend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 9);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 9);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 9);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (36, 464, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 10);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 10);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 10);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (77, 531, 'Outstanding service! Highly recommend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 11);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 11);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 11);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (38, 398, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 12);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 12);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 12);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (186, 511, 'Cooks the worst smelling food in the entire world.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 13);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 13);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 13);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (19, 690, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 14);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 14);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 14);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (811, 608, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 15);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 15);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 15);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (397, 864, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 16);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 16);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 16);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (849, 651, 'Outstanding service! Highly recommend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 17);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 17);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 17);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (431, 758, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 18);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 18);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 18);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (640, 567, 'Cooks the worst smelling food in the entire world.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 19);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 19);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 19);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (519, 598, 'They paid the rent for the both of us, #rich.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 20);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 20);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 20);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (455, 838, 'Had a party everynight and tried to sell my furniture.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 21);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 21);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 21);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (926, 277, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 22);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 22);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 22);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (965, 413, 'Everything was fine until they tried to steal my boyfriend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 23);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 23);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 23);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (671, 388, 'Were paired as randoms, now one of my closest friends.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 24);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 24);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 24);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (378, 715, 'Had a party everynight and tried to sell my furniture.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 25);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 25);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 25);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (156, 625, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 26);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 26);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 26);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (836, 563, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 27);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 27);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 27);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (58, 31, 'Outstanding service! Highly recommend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 28);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 28);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 28);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (433, 326, 'Her cat thought my litter was her close.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 29);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 29);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 29);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (387, 25, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 30);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 30);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 30);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (93, 275, 'Had to call the police due to hostility.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 31);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 31);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 31);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (530, 841, 'Her cat thought my litter was her close.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 32);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 32);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 32);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (606, 574, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 33);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 33);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 33);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (262, 405, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 34);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 34);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 34);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (237, 694, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 35);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 35);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 35);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (786, 729, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 36);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 36);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 36);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (95, 52, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 37);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 37);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 37);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (715, 593, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 38);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 38);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 38);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (711, 647, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 39);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 39);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 39);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (767, 10, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 40);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 40);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 40);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (9, 842, 'Met basic expectations.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 41);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 41);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 41);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (468, 373, 'Her cat thought my litter was her close.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 42);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 42);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 42);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (672, 514, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 43);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 43);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 43);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (578, 836, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 44);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 44);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 44);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (693, 523, 'Very disappointed with the how inconsiderate they were.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 45);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 45);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 45);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (211, 105, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 46);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 46);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 46);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (193, 519, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 47);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 47);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 47);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (704, 653, 'Their friends will be over allllll the time, so be prepared', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 48);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 48);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 48);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (55, 881, 'Had a party everynight and tried to sell my furniture.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 49);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 49);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 49);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (23, 789, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 50);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 50);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 50);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (833, 219, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 51);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 51);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 51);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (989, 1000, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 52);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 52);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 52);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (163, 854, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 53);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 53);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 53);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (425, 178, 'Very very cluttered and always playing crazy video games.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 54);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 54);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 54);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (846, 646, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 55);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 55);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 55);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (426, 869, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 56);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 56);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 56);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (983, 246, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 57);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 57);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 57);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (512, 737, 'Cleaned everything, even my mess.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 58);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 58);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 58);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (879, 221, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 59);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 59);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 59);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (421, 225, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 60);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 60);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 60);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (974, 391, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 61);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 61);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 61);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (77, 272, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 62);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 62);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 62);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (492, 305, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 63);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 63);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 63);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (18, 528, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 64);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 64);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 64);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (440, 946, 'Cleaned everything, even my mess.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 65);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 65);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 65);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (55, 378, 'Very good experience overall.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 66);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 66);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 66);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (878, 43, 'Only problem was they refused to clean the bathroom.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 67);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 67);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 67);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (170, 681, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 68);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 68);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 68);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (315, 386, '10/10 person, even bailed me out of jail once.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 69);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 69);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 69);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (883, 365, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 70);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 70);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 70);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (248, 534, 'Had to call the police due to hostility.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 71);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 71);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 71);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (888, 142, 'Their friends will be over allllll the time, so be prepared', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 72);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 72);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 72);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (473, 552, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 73);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 73);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 73);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (8, 954, 'Clean, quiet, and a geat friend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 74);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 74);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 74);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (511, 38, 'Terrible roommate; would not recommend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 75);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 75);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 75);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (722, 377, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 76);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 76);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 76);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (154, 26, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 77);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 77);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 77);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (792, 79, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 78);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 78);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 78);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (711, 640, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 79);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 79);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 79);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (909, 223, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 80);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 80);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 80);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (262, 127, 'Clean, quiet, and a geat friend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 81);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 81);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 81);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (363, 238, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 82);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 82);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 82);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (120, 49, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 83);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 83);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 83);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (549, 360, 'I love love love them.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 84);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 84);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 84);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (417, 82, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 85);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 85);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 85);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (515, 505, '10/10 person, even bailed me out of jail once.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 86);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 86);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 86);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (197, 829, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 87);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 87);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 87);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (108, 875, 'Exceeded expectations in every way.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 88);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 88);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 88);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (938, 826, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 89);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 89);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 89);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (145, 970, 'Everything was fine until they tried to steal my boyfriend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 90);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 90);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 90);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (80, 506, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 91);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 91);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 91);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (666, 252, 'Very very cluttered and always playing crazy video games.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 92);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 92);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 92);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (578, 965, 'Exceeded expectations in every way.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 93);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 93);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 93);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (949, 927, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 94);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 94);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 94);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (751, 417, 'Cleaned everything, even my mess.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 95);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 95);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 95);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (504, 288, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 96);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 96);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 96);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (678, 426, 'I love love love them.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 97);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 97);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 97);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (792, 961, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 98);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 98);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 98);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (237, 301, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 99);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 99);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 99);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (100, 820, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 100);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 100);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 100);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (926, 754, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 101);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 101);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 101);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (113, 467, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 102);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 102);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 102);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (826, 518, 'Very very cluttered and always playing crazy video games.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 103);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 103);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 103);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (954, 49, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 104);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 104);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 104);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (354, 135, 'Were paired as randoms, now one of my closest friends.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 105);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 105);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 105);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (949, 592, 'Very disappointed with the how inconsiderate they were.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 106);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 106);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 106);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (465, 221, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 107);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 107);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 107);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (380, 646, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 108);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 108);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 108);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (42, 867, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 109);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 109);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 109);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (718, 230, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 110);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 110);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 110);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (494, 589, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 111);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 111);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 111);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (563, 450, '10/10 person, even bailed me out of jail once.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 112);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 112);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 112);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (729, 703, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 113);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 113);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 113);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (217, 301, 'Exceeded expectations in every way.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 114);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 114);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 114);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (823, 637, 'Cooks the worst smelling food in the entire world.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 115);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 115);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 115);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (84, 994, 'Outstanding service! Highly recommend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 116);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 116);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 116);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (556, 554, 'Were paired as randoms, now one of my closest friends.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 117);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 117);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 117);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (759, 846, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 118);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 118);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 118);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (879, 433, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 119);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 119);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 119);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (893, 264, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 120);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 120);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 120);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (838, 449, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 121);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 121);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 121);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (437, 463, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 122);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 122);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 122);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (137, 237, 'Outstanding service! Highly recommend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 123);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 123);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 123);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (800, 557, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 124);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 124);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 124);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (844, 443, 'Were paired as randoms, now one of my closest friends.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 125);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 125);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 125);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (169, 822, 'Cleaned everything, even my mess.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 126);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 126);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 126);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (256, 382, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 127);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 127);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 127);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (10, 392, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 128);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 128);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 128);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (162, 951, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 129);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 129);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 129);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (849, 902, 'Terrible roommate; would not recommend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 130);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 130);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 130);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (203, 578, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 131);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 131);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 131);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (278, 426, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 132);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 132);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 132);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (755, 570, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 133);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 133);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 133);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (378, 583, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 134);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 134);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 134);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (323, 632, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 135);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 135);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 135);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (561, 254, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 136);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 136);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 136);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (942, 709, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 137);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 137);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 137);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (294, 453, 'Terrible roommate; would not recommend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 138);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 138);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 138);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (697, 675, 'Very very cluttered and always playing crazy video games.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 139);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 139);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 139);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (381, 504, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 140);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 140);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 140);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (64, 708, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 141);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 141);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 141);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (525, 471, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 142);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 142);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 142);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (354, 429, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 143);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 143);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 143);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (623, 164, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 144);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 144);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 144);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (839, 841, 'Clean, quiet, and a geat friend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 145);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 145);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 145);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (158, 252, 'Exceeded expectations in every way.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 146);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 146);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 146);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (941, 186, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 147);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 147);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 147);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (617, 398, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 148);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 148);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 148);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (410, 952, 'Terrible roommate; would not recommend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 149);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 149);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 149);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (632, 939, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 150);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 150);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 150);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (721, 676, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 151);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 151);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 151);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (616, 11, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 152);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 152);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 152);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (728, 840, 'Had to call the police due to hostility.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 153);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 153);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 153);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (533, 121, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 154);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 154);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 154);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (146, 592, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 155);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 155);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 155);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (681, 203, 'Had a party everynight and tried to sell my furniture.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 156);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 156);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 156);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (884, 16, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 157);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 157);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 157);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (466, 869, 'Exceeded expectations in every way.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 158);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 158);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 158);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (75, 494, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 159);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 159);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 159);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (346, 981, 'Had to call the police due to hostility.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 160);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 160);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 160);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (818, 654, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 161);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 161);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 161);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (225, 408, 'Only problem was they refused to clean the bathroom.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 162);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 162);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 162);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (159, 818, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 163);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 163);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 163);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (716, 989, 'Met basic expectations.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 164);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 164);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 164);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (445, 916, 'Cleaned everything, even my mess.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 165);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 165);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 165);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (905, 15, 'Only problem was they refused to clean the bathroom.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 166);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 166);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 166);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (511, 165, 'Everything was fine until they tried to steal my boyfriend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 167);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 167);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 167);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (14, 395, 'Very disappointed with the how inconsiderate they were.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 168);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 168);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 168);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (74, 326, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 169);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 169);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 169);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (909, 643, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 170);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 170);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 170);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (209, 324, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 171);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 171);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 171);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (322, 823, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 172);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 172);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 172);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (555, 544, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 173);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 173);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 173);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (855, 56, 'They paid the rent for the both of us, #rich.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 174);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 174);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 174);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (515, 816, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 175);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 175);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 175);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (385, 486, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 176);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 176);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 176);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (348, 634, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 177);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 177);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 177);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (790, 823, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 178);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 178);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 178);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (987, 420, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 179);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 179);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 179);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (458, 544, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 180);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 180);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 180);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (279, 611, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 181);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 181);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 181);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (664, 841, 'Their friends will be over allllll the time, so be prepared', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 182);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 182);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 182);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (370, 858, 'Cooks the worst smelling food in the entire world.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 183);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 183);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 183);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (742, 276, 'Only problem was they refused to clean the bathroom.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 184);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 184);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 184);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (378, 38, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 185);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 185);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 185);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (967, 672, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 186);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 186);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 186);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (278, 709, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 187);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 187);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 187);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (882, 597, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 188);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 188);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 188);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (757, 780, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 189);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 189);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 189);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (486, 305, 'Exceeded expectations in every way.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 190);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 190);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 190);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (50, 609, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 191);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 191);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 191);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (326, 570, 'Had to call the police due to hostility.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 192);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 192);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 192);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (519, 27, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 193);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 193);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 193);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (334, 100, 'Had to call the police due to hostility.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 194);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 194);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 194);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (498, 931, 'Clean, quiet, and a geat friend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 195);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 195);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 195);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (143, 115, '10/10 person, even bailed me out of jail once.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 196);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 196);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 196);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (598, 488, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 197);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 197);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 197);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (943, 690, 'Outstanding service! Highly recommend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 198);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 198);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 198);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (366, 787, 'I love love love them.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 199);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 199);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 199);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (960, 707, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 200);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 200);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 200);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (911, 47, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 201);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 201);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 201);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (851, 946, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 202);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 202);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 202);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (98, 75, 'Cleaned everything, even my mess.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 203);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 203);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 203);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (236, 534, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 204);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 204);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 204);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (733, 921, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 205);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 205);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 205);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (963, 188, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 206);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 206);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 206);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (661, 433, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 207);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 207);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 207);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (185, 775, 'Had a party everynight and tried to sell my furniture.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 208);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 208);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 208);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (538, 866, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 209);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 209);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 209);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (13, 528, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 210);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 210);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 210);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (430, 993, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 211);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 211);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 211);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (60, 452, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 212);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 212);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 212);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (500, 495, 'Everything was fine until they tried to steal my boyfriend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 213);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 213);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 213);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (917, 664, 'Very good experience overall.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 214);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 214);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 214);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (234, 516, 'Clean, quiet, and a geat friend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 215);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 215);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 215);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (183, 811, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 216);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 216);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 216);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (267, 95, 'Met basic expectations.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 217);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 217);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 217);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (495, 675, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 218);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 218);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 218);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (579, 553, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 219);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 219);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 219);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (647, 297, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 220);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 220);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 220);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (87, 789, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 221);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 221);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 221);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (920, 686, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 222);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 222);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 222);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (684, 595, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 223);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 223);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 223);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (755, 952, 'Very disappointed with the how inconsiderate they were.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 224);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 224);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 224);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (859, 840, 'Only problem was they refused to clean the bathroom.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 225);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 225);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 225);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (660, 108, 'Her cat thought my litter was her close.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 226);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 226);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 226);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (744, 185, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 227);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 227);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 227);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (868, 956, 'Very disappointed with the how inconsiderate they were.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 228);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 228);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 228);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (40, 171, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 229);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 229);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 229);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (137, 240, 'Very very cluttered and always playing crazy video games.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 230);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 230);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 230);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (315, 837, 'Only problem was they refused to clean the bathroom.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 231);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 231);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 231);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (825, 743, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 232);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 232);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 232);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (648, 440, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 233);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 233);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 233);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (366, 402, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 234);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 234);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 234);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (538, 264, 'Everything was fine until they tried to steal my boyfriend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 235);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 235);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 235);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (961, 906, 'Very good experience overall.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 236);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 236);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 236);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (111, 540, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 237);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 237);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 237);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (215, 375, 'Cooks the worst smelling food in the entire world.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 238);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 238);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 238);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (921, 670, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 239);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 239);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 239);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (486, 968, 'Very good experience overall.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 240);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 240);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 240);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (697, 214, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 241);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 241);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 241);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (353, 829, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 242);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 242);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 242);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (416, 296, 'Had a party everynight and tried to sell my furniture.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 243);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 243);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 243);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (49, 404, 'I love love love them.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 244);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 244);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 244);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (398, 561, 'Her cat thought my litter was her close.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 245);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 245);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 245);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (724, 447, 'Were paired as randoms, now one of my closest friends.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 246);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 246);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 246);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (383, 300, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 247);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 247);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 247);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (894, 509, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 248);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 248);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 248);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (136, 636, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 249);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 249);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 249);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (744, 731, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 250);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 250);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 250);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (853, 725, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 251);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 251);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 251);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (911, 150, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 252);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 252);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 252);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (669, 779, 'Very disappointed with the how inconsiderate they were.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 253);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 253);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 253);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (551, 23, 'Her cat thought my litter was her close.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 254);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 254);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 254);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (73, 263, 'It was okay; some aspects were average.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 255);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 255);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 255);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (651, 976, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 256);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 256);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 256);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (107, 535, 'Everything was fine until they tried to steal my boyfriend.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 257);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 257);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 257);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (995, 605, 'Good roomie, except for the one time she crashed out over a situationship and broke my mom''s portrait.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 258);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 258);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 258);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (751, 414, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 259);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 259);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 259);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (272, 588, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 260);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 260);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 260);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (979, 348, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 261);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 261);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 261);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (960, 402, 'Met basic expectations.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 262);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 262);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 262);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (339, 259, 'Were paired as randoms, now one of my closest friends.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 263);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 263);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 263);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (877, 616, 'They''re great, just use bleach like it''s the bible. Prepare to pass out sometimes.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 264);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 264);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 264);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (936, 676, 'Exceeded expectations in every way.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 265);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 265);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 265);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (803, 562, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 266);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 266);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 266);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (26, 390, '10/10 person, even bailed me out of jail once.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 267);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 267);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 267);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (127, 519, 'Clean, quiet, and a geat friend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 268);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 268);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 268);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (374, 567, 'Great roommate, just lowkey (highkey) a liar.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 269);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 269);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 269);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (117, 277, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 270);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 270);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 270);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (201, 675, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 271);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 271);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 271);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (10, 447, '10/10 person, even bailed me out of jail once.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 272);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 272);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 272);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (747, 771, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 273);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 273);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 273);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (336, 3, 'Takes really long showers.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 274);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 274);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 274);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (22, 762, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 275);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 275);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 275);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (918, 678, 'Met basic expectations.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 276);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 276);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 276);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (199, 896, 'Exceeded expectations in every way.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 277);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 277);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 277);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (870, 186, 'Had a party everynight and tried to sell my furniture.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 278);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 278);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 278);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (667, 58, 'Had a party everynight and tried to sell my furniture.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 279);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 279);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 279);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (543, 805, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 280);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 280);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 280);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (52, 499, 'Her cat thought my litter was her close.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 281);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 281);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 281);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (211, 720, 'Only problem was they refused to clean the bathroom.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 282);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 282);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 282);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (599, 943, 'Neither great nor terrible.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 283);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 283);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 283);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (161, 191, 'Could have been better.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 284);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 284);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 284);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (613, 704, 'Below average experience overall.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 285);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 285);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 285);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (183, 901, 'Were paired as randoms, now one of my closest friends.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 286);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 286);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 286);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (363, 665, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 287);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 287);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 287);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (708, 428, 'I would use this again.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 288);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 288);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 288);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (311, 70, 'Very disappointed with the how inconsiderate they were.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 289);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 289);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 289);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (441, 479, 'Very good experience overall.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 290);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 290);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 290);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (477, 193, 'Fine, but stole my food a few times, wouldn''t admit it.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 291);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 291);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 291);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (33, 378, 'Were paired as randoms, now one of my closest friends.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 292);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 292);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 292);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (235, 809, 'Had to call the police due to hostility.', 1);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 293);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 293);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 293);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (650, 174, 'Lazy.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (4, 294);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 294);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 294);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (66, 71, 'Clean, quiet, and a geat friend.', 5);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 295);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 295);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 295);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (493, 921, 'They definitely sent me the edited pictures of the room.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (8, 296);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 296);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 296);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (77, 127, 'Met basic expectations.', 3);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 297);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 297);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 297);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (518, 908, 'Not very impressed; room for improvement.', 2);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 298);
INSERT INTO reviewTag (tagId, reviewId) VALUES (6, 298);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 298);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (975, 163, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 299);
INSERT INTO reviewTag (tagId, reviewId) VALUES (2, 299);
INSERT INTO reviewTag (tagId, reviewId) VALUES (1, 299);

INSERT INTO review (reviewerId, revieweeId, content, ratingValue) VALUES (440, 242, 'Quite satisfied with the service.', 4);
INSERT INTO reviewTag (tagId, reviewId) VALUES (3, 300);
INSERT INTO reviewTag (tagId, reviewId) VALUES (7, 300);
INSERT INTO reviewTag (tagId, reviewId) VALUES (5, 300);
