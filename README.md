# README

TO RUN THE APP run `rails server`

TODO:
Make markdown render as HTML from the content on a post
Clean up everything, make a global header and footer.
Learn more before Matias wakes up.
Learn more when Matias wakes up.

App is a folder where all the application logic stays
If you think: this belongs with cerealize_me and it can't be placed somewhere else,
you'll find it in the app folder.

Think about libraries for example, they can be used in other apps- so they don't belong in the app folder.
They belong in the lib folder.

Bin is a folder with all the commands for your rails application
when I ran the server command it didn't run a command from this folder, but a default
this is somewhere where you can write custom rails executables of things you might typically run.

bundle, like when I installed all the gems, it runs this command. rake etc etc.
A bunch of commands I'll use in the future.

config is a folder where you Configure your application. Before it does things.
It's like initialization for the application. This is where the settings are so they are not needed again.

db is a folder for holding the migrations for the database.
Migrations are for adding new things to your database like columns or new parts of the schema
You have to keep your migrations in order to make everything work.

lib is a folder where you keep outside code, anything you write that you can use again
should usually be your own code, since there is the vendor folder.
If you are using someones gem, it should be in the Gemfile!
If you think you can make it into a gem, then it belongs in the lib file.

logs is a folder for the logs:
development
production
tests

public is a folder for the static assets. Things that won't change.
Your logo, 404, 403, favicon, etc etc

test folder is where your tests will live.

vendor folder is the right place for libraries from others, without a gem.
npm packages or whatnot. This is not for ruby code, it could be.
But it is normally for assets, js and css libraries.
I won't be using this much today, since there are so many other ways to add code.
gems, yarn, npm packages, asset rails, Many many ways to not use this.

So now we are back to building the app:
Back to routes. STEP ONE. config/routes.rb

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
