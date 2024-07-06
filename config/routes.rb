Rails.application.routes.draw do
  resources :products
  resources :product_categories
  devise_for :users

  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"
  resources :stores
end
