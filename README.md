# Mary Kaheti Kihara
# Phase 3 Project

## Goals

- I was creating a web basic API with Sinatra and Active Record to support a React
  frontend

##  Backend

First I installed the dependencies of the backend server with bundle install.
Then i created the folders which were not there. 
I used bundle add to add gem pry which was not there and was quintessential for my project to run.
I first started by creating migrations with ******bundle exec db:create_migration NAME=....**
Created the tables then i migrated with ******bundle exec db:migrate**
this brought about the file development.sqlite3 and schema.rb
seeded the data i had inputed with **bundle exec rake db:seed**
Then i created the models which has the classes here i created the three classes.
**Property.rb** which belongs to both the seller and  the estate.
**Estate.rb** which has_many properties and has many sellers through properties.
**Seller.rb** which has many properties and has many estates through properties.
At this point i was utilizing Active record to access and persist data in a database.
This had created a two one to many relationship.
This was crucial for building a Sinatra API backend.
The application controller this is where i connected with the sinatra so i could get the local host.
After launching i started working towards the frontend.
Since i keep gettting errors when running bundle exec rake server i used
rackup config.ru.






  



