Rails.application.routes.draw do


  resources :drinks
  resources :users

  get    '/video' => 'drinks#index_video'
  get    '/login' => 'session#new'
  post   '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  root to: 'drinks#index'
end
