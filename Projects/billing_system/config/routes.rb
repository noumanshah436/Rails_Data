Rails.application.routes.draw do

  resources :posts
  devise_for :users
  # get 'home/index'

  root to: "home#index"

  # namespace :api do
  #   namespace :v1 do
  #     #   end
  # end

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end
end
