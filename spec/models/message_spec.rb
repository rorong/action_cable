# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Message, type: :model do
  subject(:message) { create(:message) }
  it 'is valid with valid attributes' do
    expect(message).to be_valid
  end

  it 'should require a user_id' do
    expect(build(:message, user_id: nil)).to_not be_valid
  end

  it 'should require a chat_id' do
    expect(build(:message, chat_id: nil)).to_not be_valid
  end

  it { expect(message).to belong_to(:chat) }
  it { expect(message).to belong_to(:user) }
end
