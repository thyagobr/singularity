Rails.application.routes.draw do
  root to: 'dashboard#main'

  get 'dashboard', to: 'dashboard#main'
  get 'raids/composing', to: 'raids#composing', as: 'raids'
  get '/login', to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :remarks
  resources :tasks do
    resources :activities do
    end
  end
end
