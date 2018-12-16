# FUNdit

Fundraising application built for educational purposes with Ruby on Rails framework.
Live version is available under: [https://pacific-ridge-19456.herokuapp.com](https://pacific-ridge-19456.herokuapp.com).

## Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org), [Rails]() and [Bundler](http://bundler.io) installed.
Clone the app, cd into its directory and install the necessary gems:

```sh
git clone git@github.com:ka1130/FUNdit.git
cd FUNdit
bundle install
```

Run migrations and seed the app with the sample data:

```sh
rake db:migrate
rake db:seed
```

Run the local Rails server: `rails s`

This will default the local port to `3000` so the app will be running on [http://localhost:3000](http://localhost:3000).
If you need it to run on a different port, pass an additional `-p` argument with the port number of your choice, i.e.: `rails s -p 4000` to run the app on [http://localhost:4000](http://localhost:4000).

# Reset the database

To bring the database back to its initial state after introducing changes run `rake db:reset`.

## Running the tests

This app was developed using TDD approach with [RSpec](http://rspec.info/) and [Capybara](https://github.com/teamcapybara/capybara). To make sure all tests pass simply run `rspec`. If you need more detailed information, pass additional formatting options: `rspec --format doc` or `rspec -f d ` for short.


## Deployment

Apart from Ruby, Rails and Bundler, you will need the [Heroku Toolbelt](https://toolbelt.heroku.com/).

First make sure all changes are commited to git. Then run: `heroku create`
Push your changes to Heroku: `git push heroku master`. This will deploy the app to the Heroku server.
Run `heroku open` to view the app in browser.


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.