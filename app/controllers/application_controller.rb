# frozen_string_literal: true

# Application Controller inherited by other controllers
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include UsersHelpers
end
