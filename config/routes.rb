Rails.application.routes.draw do
  root to: 'dashboard#main'

  get 'dashboard', to: 'dashboard#main'
  get 'raids/composing', to: 'raids#composing', as: 'raids'
  post 'raids/select_task', to: 'raids#select_task', as: 'raid_select_task'
  get 'raids/strategy', to: 'raids#strategy', as: 'raid_strategy'
  get '/login', to: 'sessions#new'
  resource :session, only: [:new, :create, :destroy]
  resources :remarks
  resources :tasks do
    resources :activities do
    end
  end
end
