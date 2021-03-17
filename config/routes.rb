Rails.application.routes.draw do
  resources :orders
  root 'pedals#index'
  devise_for :users
  resources :pedals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
