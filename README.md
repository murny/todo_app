# README

## Dependencies
 - Ruby v2.3.3
 - Rails v5.2.2
 - PostgreSQL
 - Node.js

## Running Locally

Clone down this repo:
```shell
git clone git@github.com:murny/todo_app.git
```

Navigate into it:
```shell
cd todo_app
```

Install gems for project:
```shell
bundle install
```

Create and setup the database:
```shell
rails db:create && rails db:migrate
```

Start the Rails server:
```shell
rails server
```

And now you can visit the site at http://localhost:3000

## Testing
Run the test suite by executing the following:
```shell
bundle exec rails test
```

Run system tests:
```shell
bundle exec rails test:system
```

Rubocop for linting:
```shell
bundle exec rubocop
```


## Deployment
We use heroku for production. To deploy to heroku run the following:
```shell
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```
