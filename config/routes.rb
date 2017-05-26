Rails.application.routes.draw do
  root 'users#welcome'
  get '/signin', to:'sessions#new', as:'sign_in'
  get '/logout', to:'sessions#destroy', as: :logout
  post '/signin', to:'sessions#create', as: "session_create"
  resources :sessions, only: [:index, :create, :destroy]
  resources :rides
  resources :users
  resources :attractions
end
