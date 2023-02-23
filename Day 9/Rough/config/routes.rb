Rails.application.routes.draw do

  get 'p/:id', to: 'users#show'

  get 'users/index'
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
