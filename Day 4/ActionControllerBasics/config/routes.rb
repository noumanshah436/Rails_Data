Rails.application.routes.draw do

  get 'rsquest_controller/index'
  
  resources :students

  get 'cookies_management/set_encrypted_cookie'
  get 'cookies_management/read_encrypted_cookie'
  get 'cookies_management/destroy_encrypted_cookie'

  get 'cookies_management/create_cookie'
  get 'cookies_management/destroy_cookie'
  get 'cookies_management/show_cookie'

  get 'session_management/new_flash'
  get 'session_management/show_flash'
  get 'session_management/next_request'

  get 'session_management/index'
  get 'session_management/destroy'
  get 'session_management/show'

  get 'params/index'
  get 'params/new'
  post 'params/create'


  get 'cookies_management/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
