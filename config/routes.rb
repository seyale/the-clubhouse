Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :games, except: [:show]
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'join_game', to: 'pages#join_game'
  get 'events', to: 'pages#events'
  get 'users_games/new'
  get 'users_games/create'
end
