Rails.application.routes.draw do
  resources :posts
  root 'posts#index'

  namespace :api do
    namespace :v1 do
      resources :posts
    end
  end
  
end
