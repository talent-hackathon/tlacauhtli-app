# frozen_string_literal: true

Rails.application.routes.draw do
  resources :orders
  resources :products
  resources :businesses
  devise_for :users
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end
  root 'main#home'
  namespace 'api' do
    namespace 'v1' do
      get 'main/index'
      resources :sessions, only: %i[create destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
