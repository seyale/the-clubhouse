Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :games, except: [:show] do
    resources :participations, only: [:new]
  end
  resources :game_creations
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'join_game', to: 'pages#join_game'
  get 'events', to: 'pages#events'
  # get 'participations/new'
  # get 'participations/create'
  get 'landing', to: 'pages#landing'
end
