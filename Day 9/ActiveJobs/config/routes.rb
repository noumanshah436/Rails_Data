Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  get 'home/index'
  get 'home/about'
  get 'home/random_number_service'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
