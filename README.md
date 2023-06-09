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






  

**Important**: Be sure you fork a copy of the repo into your GitHub account
before cloning it. You can do this by using the link above or by clicking the
"Octocat" button at the top of this page, then clicking "Fork" in the upper
right corner of the repo page.

[fork link]: https://github.com/learn-co-curriculum/phase-3-sinatra-react-project/fork

The `app/controllers/application_controller.rb` file has an example GET route
handler. Replace this route with routes for your project.

You can start your server with:

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Frontend Setup

Your backend and your frontend should be in **two different repositories**.

Create a new repository in a **separate folder** with a React app for your
frontend. To do this, `cd` out of the backend project directory, and use
[create-react-app][] to generate the necessary code for your React frontend:

```console
$ npx create-react-app my-app-frontend
```

After creating the project locally, you should also
[create a repository on GitHub][create repo] to host your repo and help
collaborate, if you're working with a partner.

### Fetch Example

Your React app should make fetch requests to your Sinatra backend! Here's an
example:

```js
fetch("http://localhost:9292/test")
  .then((r) => r.json())
  .then((data) => console.log(data));
```

## Project Tips

- This project is intended to focus more on the backend than the frontend, so
  try and keep the React side of things relatively simple. Focus on working with
  Active Record and performing CRUD actions. What are some interesting queries you can write? What kinds of questions can you ask of your data?
- Once you have a project idea, come up with a domain model and decide what
  relationships exist between the models in your application. Use a tool like
  [dbdiagram.io][] to help visualize your models.
- Decide on your API endpoints. What data should they return? What kind of CRUD
  action should they perform? What data do they need from the client?
- Use [Postman][postman download] to test your endpoints.
- Use `binding.pry` to debug your requests on the server. It's very helpful to use a
  `binding.pry` in your controller within a route to see what `params` are being
  sent.
- Use the [Network Tab in the Dev Tools][network tab] in the frontend to debug
  your requests.

## Resources

- [create-react-app][]
- [dbdiagram.io][]
- [Postman][postman download]

[create-react-app]: https://create-react-app.dev/docs/getting-started
[create repo]: https://docs.github.com/en/get-started/quickstart/create-a-repo
[dbdiagram.io]: https://dbdiagram.io/
[postman download]: https://www.postman.com/downloads/
[network tab]: https://developer.chrome.com/docs/devtools/network/
