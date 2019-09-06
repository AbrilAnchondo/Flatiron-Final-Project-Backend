# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Flatiron-Final-Project-Backend


I fetch for the comments that people have made on my animal.
Display thos comments underneath each animal on my page
How to fetch for this comments? 
ex Comment.first.receiver
Comment.first.maker
@comment.receiver.username where username is the same as the username of user that is looged in
All this are instances of User

Instances of Comments:
ex:
User.first.r give me all the @comments that I/user has made
User.first.m gives all the @comments that I/user received

User.first.receivers gives me all the @users that have gotten my message
User.first.makers gives me all the @users that made me a comment.

For my page, I need to look for the following instance (my animal) and find the @comment that has that following and my user_id as the receiver_id. 
ex. for gia: User.second.m
