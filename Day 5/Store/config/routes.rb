Rails.application.routes.draw do

  # get 'products/index'
  # get 'products/show'

  root 'products#index'


  get 'products', to: 'products#index', as: 'products'
# ^verb  ^URI          ^controller#action    ^ refer: products_path

  get 'products/:id', to: 'products#show',  as: 'product' , id: /\d+/
  # ^verb  ^URI          ^controller  ^action    ^ refer: product_path  ^constraint (for numeric values only)

  get 'about' => 'products#about'

  get 'blog', to: redirect('https://guides.rubyonrails.org/v5.2/routing.html')

  namespace :admin do
    get 'users', to: "users#index"
    resources :students
    resources :sellers
  end


  namespace :animals do
    resources :cats
  end

  # scope module: :animals do
  #     resources :cats
  # end

  # this will remove the admin prefix from the url and is still use controller in admin folder
  # scope  module: :admin do
  #   resources :students
  # end

  # use prefix admin and use normal controller in controllers folder
  # scope :admin do
  #   resources :students
  # end

  # get "*path", to: redirect("/errors")

end
