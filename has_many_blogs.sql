DROP DATABASE IF EXISTS has_many_blogs;
DROP USER has_many_user;

CREATE USER has_many_user;

CREATE DATABASE has_many_blogs WITH OWNER has_many_user;


\c has_many_blogs;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL NOT NULL PRIMARY KEY,
  username VARCHAR(90) NOT NULL,
  first_name VARCHAR(90),
  last_name VARCHAR(90),
  created_at TIMESTAMP with time zone,
  updated_at TIMESTAMP with time zone
);

CREATE TABLE posts (
  id SERIAL NOT NULL PRIMARY KEY,
  title VARCHAR(180) DEFAULT NULL,
  url VARCHAR(510) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  user_id INTEGER NOT NULL REFERENCES users(id)
);

CREATE TABLE comments (
  id SERIAL NOT NULL PRIMARY KEY,
  body VARCHAR(510) DEFAULT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT now(),
  user_id INTEGER NOT NULL REFERENCES users(id),
  post_id INTEGER NOT NULL REFERENCES posts(id)
);

\i scripts/blog_data.sql;




\c bk;