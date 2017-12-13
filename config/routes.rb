Rails.application.routes.draw do
  root to: 'tasks#index'

  get '/login', to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :remarks
  resources :tasks do
    resources :activities do
    end
  end
end
