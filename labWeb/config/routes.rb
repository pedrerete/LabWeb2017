Rails.application.routes.draw do
 

  get 'controllername/new'

  get 'controllername/create'

  get 'login/index'

  resources :products 
  resources :stores
  resources :events
  resources :news
  resources :cart

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
