# frozen_string_literal: true

Rails.application.routes.draw do
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

  root to: 'home#index'

  resources :profile, only: %i[index show]
  resources :topics
  resources :follows, only: %i[create destroy]

  resources :questions do
    resources :answers, only: %i[create destroy] 
    resources :votes, only: %i[create update destroy], module: :questions
  end

  resources :answers, only: [] do
    resources :votes, only: %i[create update destroy], module: :answers
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
end
