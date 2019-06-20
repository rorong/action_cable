# frozen_string_literal: true

# == Schema Information
#
# Table name: users
# username                    string
# password_digest             string
# created_at                 datetime
# updated_at                 datetime

# users
class User < ApplicationRecord
  has_secure_password

  has_many :messages, dependent: :destroy
  has_many :subscriptions, dependent: :destroy
  has_many :chats, through: :subscriptions, dependent: :destroy
  validates :username, presence: true
  validates :password, presence: true

  def existing_chats_users
    existing_chat_users = []
    chats.each do |chat|
      existing_chat_users.concat(
        chat.subscriptions.where.not(user_id: id).map(&:user)
      )
    end
    existing_chat_users.uniq
  end
end
