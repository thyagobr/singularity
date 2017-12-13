Rails.application.routes.draw do
  root to: 'tasks#index'

  get '/login', to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :tasks do
    resources :activities
  end
end
