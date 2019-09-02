Rails.application.routes.draw do
  get 'dashboard/home'

  get 'dashboard/help'

  resources :posts
  resources :users

  root 'users#index'
end
