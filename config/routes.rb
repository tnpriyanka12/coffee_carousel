Rails.application.routes.draw do
  resources :drinks
  resources :users

  root to: 'drinks#index'
end
