Rails.application.routes.draw do


  resources :drinks
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
  root to: 'drinks#index'
end
