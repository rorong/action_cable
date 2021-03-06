# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create(:user) }
  let(:valid_attributes) { build(:user).as_json }
  let(:invalid_attributes) {}
  let(:valid_session) {}

  describe 'GET #new' do
    it 'assigns a new user as @user' do
      get :new
      expect(assigns(:user)).to be_a_new(User)
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new User' do
        post :create, params: { user: valid_attributes }
        expect(assigns(:user)).to be_a_new(User)
        session[:user_id] = user.id
      end
    end

    context 'with invalid params' do
      it 'Should not create user with invalid params' do
        expect { post :create, params: { user: invalid_attributes } }
        expect(assigns(:user)).not_to be_a_new(User)
      end
    end
  end



end
