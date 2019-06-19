# frozen_string_literal: true

# This migration will create chats table
class CreateChats < ActiveRecord::Migration[5.2]
  def change
    create_table :chats do |t|
      t.string :identifier

      t.timestamps
    end
  end
end
