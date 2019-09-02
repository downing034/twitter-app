Rails.application.routes.draw do
  root 'dashboard#home'
  get '/help', to: 'dashboard#help'
  get '/about', to: 'dashboard#about'
  get '/contact', to: 'dashboard#contact'

  get '/signup', to: 'users#new'

  # resources :posts
  # resources :users
end
