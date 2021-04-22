Rails.application.routes.draw do
  resources :friend_requests
  resources :friendships
  resources :user_platforms
  resources :accepted_media
  resources :platforms
  resources :media
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/signup', to: 'users#create'
  post '/login', to: 'auth#create'
  get '/persist', to: 'users#profile'
  get '/random', to: 'media#random'

end
