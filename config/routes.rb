Rails.application.routes.draw do
  root to: 'dashboard#index'

  get 'dashboard/index', as: :dashboard

  resources :tasks do
    resources :activities
  end
end
