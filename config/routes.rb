Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'main#index'

  resources :fighters, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'fighters#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
end
