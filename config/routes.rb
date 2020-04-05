Rails.application.routes.draw do
  root :to => 'pages#welcome'
  resources :users, :only => [:new, :create, :index]
  resources :registrations, :only => [:create]

  get 'users/new'
  get 'records/index'
  get 'records/new'
  get 'records/edit'
  get 'records/show'

  # get '/login' => 'session#new'
  post '/login' => 'session#login'
  # delete '/login' => 'session#destroy'

resources :records
end
