Rails.application.routes.draw do
  devise_for :users
  root 'books#index'
  resources :users, only: [:edit, :update]
  resources :categories, only: [:index, :show]
  namespace :books do
    resources :searches, only: :index
  end
  resources :books do
    collection do
      get 'get_category_children', defaults: { format: 'json' }
    end
  end
end
