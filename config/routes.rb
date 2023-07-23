Rails.application.routes.draw do
  root 'sessions#index'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get '/jobs', to: 'jobs#index', as: 'jobs'
  resources :jobs
end
