# frozen_string_literal: true

# UserHelpers includes the helper method in context with the user object
module UsersHelpers
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user != nil
  end
end
