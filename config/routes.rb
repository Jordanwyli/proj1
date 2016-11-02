Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'trainers#damage'
  post '/create', to: 'pokemons#create', as: 'create'
  resources :pokemons
end
