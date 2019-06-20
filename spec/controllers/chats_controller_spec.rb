# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ChatsController, type: :controller do
  let(:chat) { create(:chat) }
  let(:valid_attributes) { build(:chat).as_json }
  let(:invalid_attributes) {}

  describe 'GET #new' do
    it 'assigns a new user as @user' do
      get :new
      expect(assigns(:user)).to be_a_new(User)
      expect(response).to be_success
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new User' do
        expect { post :create, params: { user: valid_attributes } }
      end
    end

    context 'with invalid params' do
      it 'Should not create user with invalid params' do
        expect { post :create, params: { user: invalid_attributes } }
      end
    end
  end
end