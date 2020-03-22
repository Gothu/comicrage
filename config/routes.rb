Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  namespace :books do
    resources :searches, only: :index
  end
  resources :books
  resources :users, only: [:edit, :update]
end
