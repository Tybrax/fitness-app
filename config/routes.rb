Rails.application.routes.draw do
  # posts and site
  get '/posts' => 'posts#index'
  get 'sessions/new'
  get '/about' => 'about#index'
  get 'site/home'
  root 'site#home'
  # routes for users
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts
  resources :users
end
