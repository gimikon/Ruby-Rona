Rails.application.routes.draw do
  root :to => 'pages#welcome'
  resources :users, :only => [:new, :create, :index]
  resources :registrations, :only => [:create]
  resources :categories #catergories = symptoms

  get 'users/new'
  get 'records/index'
  get 'records/new'
  get 'records/edit'
  get 'records/show'

  # get '/login' => 'session#new'
  # post '/login' => 'session#login'

  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'

resources :records
end
