# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Chat, type: :model do
  subject(:chat) { create(:chat) }

  it 'is valid with valid attributes' do
    expect(chat).to be_valid
  end

  it { expect(chat).to validate_presence_of(:identifier) }
  it { expect(chat).to validate_uniqueness_of(:identifier) }
  it { expect(chat).to have_many :messages }
  it { expect(chat).to have_many :subscriptions }
  it { expect(chat).to have_many(:users).through(:subscriptions) }
end
