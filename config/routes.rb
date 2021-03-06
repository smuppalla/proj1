Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  patch 'capture', to: 'pokemons#capture'
  patch 'damage', to: 'pokemons#damage'
  post '/pokemons', to: 'pokemons#create', as: 'create'
  get '/pokemon/new', to: 'pokemons#new', as: 'new'
end
