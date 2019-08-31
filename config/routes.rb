Rails.application.routes.draw do
  resources :organizations
  resources :comments
  resources :followings
  resources :species
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
