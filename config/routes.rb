Rails.application.routes.draw do

  root 'static#home'
  get '/signin', to: "sessions#new"
  post '/sessions/create', to: "sessions#create"
  delete '/signout', to: 'sessions#destroy'
  resources :rides 
  resources :users
  resources :attractions

end