# frozen_string_literal: true

# Base Helper inherited by all helpers.
# all methods will be avaialble through out the logic
module ApplicationHelper
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user != nil
  end
end
