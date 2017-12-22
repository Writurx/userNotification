Rails.application.routes.draw do
  root 'main#index'

  resources :notifications
  resources :users
  resources :main
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
