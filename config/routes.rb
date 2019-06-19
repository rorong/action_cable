# frozen_string_literal: true

Rails.application.routes.draw do
  root 'chats#index'

  resources :users, only: %i[new create] do
    resources :chats, only: %i[index show create]
  end
  resources :sessions, only: %i[new destroy create]
  resources :messages, only: [:create]
end
