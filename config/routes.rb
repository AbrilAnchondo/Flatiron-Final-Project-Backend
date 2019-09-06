Rails.application.routes.draw do

  get '/persist', to: 'tokens#persist'
 
  resources :organizations
  resources :messages
  resources :followings
  resources :species
  resources :users

 

  post '/tokens', to: 'tokens#create'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
