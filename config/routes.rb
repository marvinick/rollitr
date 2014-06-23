Rollitr::Application.routes.draw do
  resources :pages
  root to: "pages#index"
  resources :users
  resources :menus

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end
