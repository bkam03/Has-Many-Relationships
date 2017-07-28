--Create a query to get all fields from the users table

SELECT * FROM users;

--Create a query to get all fields from the posts table where the user_id is 100

SELECT * FROM posts WHERE user_id = 100;

--Create a query to get all posts fields, the user's first name, and the user's last name, from the posts table where the user's id is 200

SELECT posts.*, users.first_name, users.last_name
  FROM
    posts
    INNER JOIN
    users
      ON posts.user_id = users.id
  WHERE
    posts.user_id = 200;

--4Create a query to get all posts fields, and the user's username, from the posts table where the user's first name is 'Norene' and the user's last_name is 'Schmitt'

/*SELECT * FROM posts INNER JOIN users ON posts.user_id = user.id*/

--5Create a query to get usernames from the users table where the user has created a post after January 1, 2015
--6Create a query to get the post title, post content, and user's username where the user who created the post joined before January 1, 2015
--7Create a query to get the all rows in the comments table, showing post title (aliased as 'Post Title'), and the all the comment's fields
--8Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created before January 1, 2015
--9Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the post was created after January 1, 2015
--10 Create a query to get the all rows in the comments table, showing post title (aliased as post_title), post url (ailased as post_url), and the comment body (aliased as comment_body) where the comment body contains the word 'USB'
--11 Create a query to get the post title (aliased as post_title), first name of the author of the post, last name of the author of the post, and comment body (aliased to comment_body), where the comment body contains the word 'matrix' ( should have 855 results )
--12 Create a query to get the first name of the author of the comment, last name of the author of the comment, and comment body (aliased to comment_body), where the comment body contains the word 'SSL' and the post content contains the word 'dolorum' ( should have 102 results )
--13 Create a query to get the first name of the author of the post (aliased to post_author_first_name), last name of the author of the post (aliased to post_author_last_name), the post title (aliased to post_title), username of the author of the comment (aliased to comment_author_username), and comment body (aliased to comment_body), where the comment body contains the word 'SSL' or 'firewall' and the post content contains the word 'nemo' ( should have 218 results )