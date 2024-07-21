Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  root "home#index"

  devise_for :users

  resources :days
  resources :product_categories
  resources :products
  resources :stores


end
