Rails.application.routes.draw do
  resources :blogs
  resources :sessions, only: [:new, :create, :show, :destroy]
  resources :users
end
