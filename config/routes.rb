Rails.application.routes.draw do
  root 'dashboard#home'
  get '/help',      to: 'dashboard#help'
  get '/about',     to: 'dashboard#about'
  get '/contact',   to: 'dashboard#contact'
  get '/signup',    to: 'users#new'
  post '/signup',    to: 'users#create'
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
  # resources :posts

end
