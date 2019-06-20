# Realtime Chat with Rails 5 Action Cable
Send and receive messages in live time using action cable based on websocket protocol.

## Prerequisites:
You will need the following things properly installed on your computer.
* ruby -v ~ 2.6
* rails -v ~ 5.2

## Installation:
* git clone <repository-url>
* bundle install
* rails db:setup && rails db:seed

Running / Development:
* rails s

Add Gem to Gemfile:

For ajax calls and action cable to work properly
* gem 'jquery-rails'

For better UI/UX
* gem 'bootstrap', '~> 4.0.0'

For secure user password and aunthentication
* gem 'bcrypt'

For prodction envinornment also include redis
* gem 'redis'

For unit testing
* gem
* gem 'rspec-rails', '~> 3.8'
* gem 'factory_bot_rails'
* gem 'shoulda-matchers'
* gem 'rails-controller-testing'
* gem 'capybara', '>= 2.15'

Install Gem:
bundle install

## Requiremnent
* You need more than one user to verify app is working.
* Three users with usernames testuser1, testuser2 and testuser3 with password same as username are mentioned in the seed.rb
