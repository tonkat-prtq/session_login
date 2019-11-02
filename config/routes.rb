Rails.application.routes.draw do
  get 'blogs/index'
  resources :sessions, only: [:new, :create, :show, :destroy]
  resources :users
end
