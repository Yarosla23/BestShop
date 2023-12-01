Rails.application.routes.draw do
  resources :carts
 get '/cart/show', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products
  root 'home#index'
  get '/users/profile', to: 'users#profile'
  devise_for :users, controllers: { registrations: 'users/registrations' }
 
end