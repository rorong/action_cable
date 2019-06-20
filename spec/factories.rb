# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { 'test' }
    password { 'password' }
  end

  factory :chat do
    identifier { '9ed77b1e0e1fd782c79c12080b177f50' }
  end

  factory :message do
    content { 'this is the test message inside chat 1' }
    user
    chat
  end

  factory :subscription do
    user
    chat
  end
end
