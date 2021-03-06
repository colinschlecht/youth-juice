Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'
  get '/logout', to: 'sessions#logout', as: 'logout'
  root 'sessions#age'
  get '/home', to: 'sessions#home'


  resources :portfolios
  resources :ingredients
  resources :recipe_ingredients
  resources :recipes
  resources :recipes do
    resources :portfolios, shallow: true
  end
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
