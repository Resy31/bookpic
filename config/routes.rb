Rails.application.routes.draw do
  devise_for :users
  resources :posts do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  root to:'posts#index'
  resources :users, only: :show
end
