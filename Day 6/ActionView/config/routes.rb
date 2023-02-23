Rails.application.routes.draw do
  # get 'posts/index'
  # get 'posts/new'
  # get 'posts/create'

  resources :posts

  get 'renderings/index'
  get 'renderings/show'
  get 'renderings/hey'
  get 'index', to: 'welcome#index', as: 'index'
  get 'form', to: 'welcome#form', as: 'form'

  resources :welcome, only: [:new, :create]

  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# 
