Rails.application.routes.draw do

  get 'posts/index'
  get 'posts/new'
  get 'posts/show'
  get 'posts/edit'

  root 'pages#index'
  get '/about', to: 'pages#show'

  get '/signup', to: 'users#new', as: :signup
  get '/profile', to: 'users#show', as: :profile

  get "/login", to: "sessions#new", as: :new_session
  # get "/logout", to: "sessions#destroy", as: :logout
  post "/login", to: "sessions#create", as: :login

  resources :users
  resources :posts
end