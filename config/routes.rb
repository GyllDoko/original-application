Rails.application.routes.draw do
  
  resources :order_products
  resources :orders
  resources :likes
  resources :comments
  resources :ratings
  resources :adresses
  resources :cards
  resources :products
  resources :shops
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :categories
  devise_for :users
  get "homepage/home"
  get "/user", to: 'homepage#user'
  get '/app', to: 'homepage#app', as: 'app'
  root 'homepage#home'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  