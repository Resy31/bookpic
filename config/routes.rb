Rails.application.routes.draw do
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update]
  root to:'posts#index'
end
