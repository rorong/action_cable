# frozen_string_literal: true

# This file should contain all the record creation needed
# to seed the database with its default values.
# The data can then be loaded with the rails db:seed command
# (or created alongside the database with db:setup).
#
# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)

# create sample user to test the application

User.create([
              { username: 'testuser1', password: 'testuser1' },
              { username: 'testuser2', password: 'testuser2' },
              { username: 'testuser3', password: 'testuser3' }
            ])
