Rails.application.routes.draw do
  resources :users
  resources :sessions,      only: [:new, :create, :destroy]

  root to: 'static_pages#home'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/login',   to: 'sessions#new',         via: 'post'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

end
