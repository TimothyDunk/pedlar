Rails.application.routes.draw do
  get 'pedals/search', to: 'pedals#search'
  resources :orders
  root 'pages#home'
  devise_for :users
  resources :pedals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
