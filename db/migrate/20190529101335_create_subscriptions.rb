# frozen_string_literal: true

# This migration will create intermediate table subscription
# between chats and users
class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.integer :chat_id
      t.integer :user_id

      t.timestamps
    end
  end
end
