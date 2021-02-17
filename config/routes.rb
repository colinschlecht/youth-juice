Rails.application.routes.draw do
  resources :portfolios
  resources :ingredients
  resources :recipe_ingredients
  resources :recipes
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'
  root 'sessions#home'
end
