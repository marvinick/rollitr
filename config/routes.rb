Rollitr::Application.routes.draw do
  resources :pages
  root to: "pages#index"
  resources :users
  resources :menus

end
