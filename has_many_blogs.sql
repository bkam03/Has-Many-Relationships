DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL NOT NULL PRIMARY KEY,
  username VARCHAR(90) NOT NULL,
  first_name VARCHAR(90),
  last_name VARCHAR(90),
  created_at TIMESTAMP with time zone,
  updated_at TIMESTAMP with time zone
);

DROP TABLE IF EXISTS posts;
CREATE TABLE posts (
  id SERIAL NOT NULL,
  user_id INTEGER NOT NULL REFERENCES users(id),
  title VARCHAR(180) DEFAULT NULL,
  url VARCHAR(510) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now(),
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT now()
);

