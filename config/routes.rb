Rails.application.routes.draw do
  resources :carts
  get 'cart/show', to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :products do
    collection do
      match 'search' => 'products#search', via: %i[get post], as: :search
    end
  end
  root 'home#index'
  get '/users/profile', to: 'users#profile'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get 'set_theme', to: 'application#update'
end
