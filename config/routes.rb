Rails.application.routes.draw do

  get 'posts/index'

  get 'posts/new'

  get 'posts/show'

  get 'posts/edit'

  root 'pages#index'

  get '/about', to: 'pages#show'

  get '/login', to: 'sessions#new'
  get 'sessions/create'

  resources :users
  resources :posts
end
