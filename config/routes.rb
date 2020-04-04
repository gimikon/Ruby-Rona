Rails.application.routes.draw do
  root :to => 'pages#welcome'
  resources :users, :only => [:new, :create, :index]
  
  get 'users/new'
  get 'records/index'
  get 'records/new'
  get 'records/edit'
  get 'records/show'

  # get '/login' => 'session#new'
  post '/login' => 'session#create'
  # delete '/login' => 'session#destroy'

resources :records
end
