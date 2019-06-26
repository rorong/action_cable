# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }
  it 'is valid with valid attributes' do
    expect(user).to be_valid
  end

  it 'should require a username' do
    expect(build(:user, username: nil)).to_not be_valid
  end

  it 'should require a password' do
    expect(build(:user, password: nil)).to_not be_valid
  end

  it { expect(user).to have_many :messages }
  it { expect(user).to have_many :subscriptions }
  it { expect(user).to have_many(:chats).through(:subscriptions) }

end


