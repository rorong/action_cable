# frozen_string_literal: true

# == Schema Information
#
# Table name: subscriptions
# chat_id                    integer
# user_id                    integer
# created_at                 datetime
# updated_at                 datetime

# intermediate model for chat and user
class Subscription < ApplicationRecord
  belongs_to :chat
  belongs_to :user
end
