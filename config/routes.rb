Rails.application.routes.draw do
  root :to => 'pages#welcome'
  resources :users, :only => [:new, :create, :index]
  resources :sessions, :only => [:create]
  resources :registrations, :only => [:create]
  resources :categories #catergories = symptoms
  
  
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in?'

  get 'users/new'
  get 'records/index'
  get 'records/new'
  get 'records/edit'
  get 'records/show'

  # get '/login' => 'session#new'
  # post '/login' => 'session#login'



resources :records
end
