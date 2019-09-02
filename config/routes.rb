Rails.application.routes.draw do
  root 'dashboard#home'
  get 'dashboard/home'
  get 'dashboard/help'
  get 'dashboard/about'

  resources :posts
  resources :users
end
