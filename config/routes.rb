Rails.application.routes.draw do
  resources :users
  resources :attractions

  post '/rides/new', to: 'rides#new'


  root 'welcome#index'
  # get '/signup', to: 'users#new'
  # post '/signup', to: 'users#create'
  get '/signin', to: "sessions#new"
  post '/signin', to: "sessions#create"
  post '/logout', to: "sessions#destroy"


end
