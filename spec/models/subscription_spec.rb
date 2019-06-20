# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subscription, type: :model do
  subject(:subscription) { create(:subscription) }
  it 'is valid with valid attributes' do
    expect(subscription).to be_valid
  end

  it 'should require a user_id' do
    expect(build(:subscription, user_id: nil)).to_not be_valid
  end

  it 'should require a chat_id' do
    expect(build(:subscription, chat_id: nil)).to_not be_valid
  end

  it { expect(subscription).to belong_to(:chat) }
  it { expect(subscription).to belong_to(:user) }
end
