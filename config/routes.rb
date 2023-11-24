Rails.application.routes.draw do
  resources :products
  root 'home#index'
  get '/users/profile', to: 'users#profile'
  devise_for :users, controllers: { registrations: 'users/registrations' }
 
end