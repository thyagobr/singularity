Rails.application.routes.draw do
  root to: 'dashboard#index'

  get 'dashboard/index', as: :dashboard

  get '/login', to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :tasks do
    resources :activities
  end
end
