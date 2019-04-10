Rails.application.routes.draw do
  get 'events/new'
  get 'sessions/new'
  get 'static_pages/home'
  root 'static_pages#home'
  get    '/signup',     to:'users#new'
  post   '/signup',    to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users, only:[:new,:create,:show, :index]
  resources :events, only:[:new,:create, :show, :index]
end
