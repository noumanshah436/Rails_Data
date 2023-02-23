Rails.application.routes.draw do

  root to: "home#index"
  resources :home
  resources :products
  resources :profile , only: [:index]
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :products
    end
  end

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
end
