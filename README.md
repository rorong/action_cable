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

Install Gem:
bundle install
