Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  root to: "posts#index"
  resources :users, only: :show
  resources :posts do
    resources :comments, only: :create
  end
end
