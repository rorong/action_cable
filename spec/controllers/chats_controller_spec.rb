# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ChatsController, type: :controller do
  let(:chat) { create(:chat) }
  let(:user) { create(:user) }
  let(:valid_attributes) { build(:chat).as_json }
  let(:invalid_attributes) {}

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Chat' do
        expect { post :create, params: { chat: valid_attributes } }
      end
    end

    context 'with invalid params' do
      it 'Should not create chat with invalid params' do
        expect { post :create, params: { chat: invalid_attributes } }
      end
    end
  end



end
