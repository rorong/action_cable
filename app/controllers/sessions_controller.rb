# frozen_string_literal: true

# For User login logout and session maintenance
class SessionsController < ApplicationController
  def new
    @user = User.new
    render 'new' unless logged_in?
  end

  def create
    @user = User.find_by(username: login_params[:username])
    if @user&.authenticate(login_params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      @error = 'Invalid username or password'
      render 'new'
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

  private

  def login_params
    params.require(:user).permit(:username, :password)
  end
end
