# frozen_string_literal: true

require 'securerandom'

# Chats controller to create and show chats among users
class ChatsController < ApplicationController
  before_action :require_login
  before_action :set_other_user, only: %i[create show]
  before_action :set_chat, only: %i[create]
  def index
    @existing_chats_users = current_user.existing_chats_users
  end

  def create
    unless @chat.persisted?
      @chat.save
      @chat.subscriptions.create(user_id: current_user.id)
      @chat.subscriptions.create(user_id: @other_user.id)
    end
    redirect_to user_chat_path(
      current_user,
      @chat,
      other_user: @other_user.id
    )
  end

  def show
    @chat = Chat.find_by(id: params[:id])
    @message = Message.new
  end

  private

  def find_chat(second_user)
    chats = current_user.chats
    chats.each do |chat|
      chat.subscriptions.each do |subs|
        return chat if subs.user_id == second_user.id
      end
    end
    nil
  end

  def require_login
    redirect_to new_session_path unless logged_in?
  end

  def set_other_user
    @other_user = User.find(params[:other_user])
  end

  def set_chat
    @chat = find_chat(@other_user) || Chat.new(identifier: SecureRandom.hex)
  end
end
