Rails.application.routes.draw do
  get '/blogs', to: 'blogs#index'
  resources :sessions, only: [:new, :create, :show, :destroy]
  resources :users
end
