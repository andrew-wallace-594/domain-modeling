DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS followers;
DROP TABLE IF EXISTS feed;

CREATE TABlE users (
id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT, 
last_name TEXT, 
username TEXT, 
location TEXT
);

CREATE TABlE posts (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
user_id INTEGER, 
file_name TEXT,
created_at TEXT
); 

-- the likes table serves as a join model between user and posts

CREATE TABlE likes (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
user_id INTEGER, 
post_id INTEGER
);

CREATE TABLE comments (
id INTEGER PRIMARY KEY AUTOINCREMENT, 
user_id INTEGER,
post_id INTEGER,
comment TEXT
);

-- this is another join model between users and users

CREATE TABLE followers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    follower_user_id INTEGER,
    following_user_id INTEGER
);

