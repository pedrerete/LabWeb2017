Rails.application.routes.draw do
 
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'controllername/new'

  get 'controllername/create'

  get 'login/index'

  resources :products 
  resources :stores
  resources :events
  resources :news

  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  root 'products#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
