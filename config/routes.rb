Rails.application.routes.draw do
  resources :customers
  resources :orders
  resources :order_details
  resources :categories
  resources :items
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'items/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
