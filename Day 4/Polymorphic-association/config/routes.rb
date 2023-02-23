Rails.application.routes.draw do

  root "home#index"

  resources :employees do
    resources :notes, module: :employees
  end

  resources :companies do
    resources :notes, module: :companies
  end

  resources :articles do
    resources :comments
  end

  resources :posts do
    resources :comments
  end

  # resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
