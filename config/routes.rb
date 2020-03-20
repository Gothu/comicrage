Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :users, only: [:edit, :update]
  resources :books
end
