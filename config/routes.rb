Rails.application.routes.draw do
  resources :categories
  resources :orders
  resources :order_details
  resources :customers
  resources :items
  get 'items/index'
  get 'items/show'
  get 'items/new'
  get 'items/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
