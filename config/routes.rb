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
  resources :categories
 
  resources :users, only: [:create, :update]
 
 
  resources :sessions
  #devise_for :users
  get "get_orders/:user_id", to: "orders#get_orders"
  get "get_orders_products/:order_id", to: "order_products#get_orders_products"
  get "get_products/:category", to: "products#get_products"
  get "get_comments/:comment_id", to: "comments#get_comments"
  get "get_comment_user/:user_id", to: "comments#get_comment_user"
  get "get_likes/:comment_id", to: "likes#get_likes"
  post "dislike", to:"likes#dislike"
  get "homepage/home"
  get "/user", to: 'homepage#user'
  get '/app', to: 'homepage#app', as: 'app'
  root 'homepage#home'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  