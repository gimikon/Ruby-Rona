Rails.application.routes.draw do
  get 'records/index'
  get 'records/new'
  get 'records/edit'
  get 'records/show'
resources :records
end
