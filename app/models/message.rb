# frozen_string_literal: true

# == Schema Information
#
# Table name: messages
# chat_id                    integer
# user_id                    integer
# created_at                 datetime
# updated_at                 datetime

# messages
class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user
end
