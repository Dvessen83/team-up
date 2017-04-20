Rails.application.routes.draw do
  root to: 'teams#index'

  devise_for :users

  resources :users
  resources :teams
end
