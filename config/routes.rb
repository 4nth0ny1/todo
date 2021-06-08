Rails.application.routes.draw do
  resources :worktypes
  resources :tasks
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "clock", to: 'clock#index', as: 'clock'
  get "dashboard", to: "dashboard#index", as: 'dashboard'

end
