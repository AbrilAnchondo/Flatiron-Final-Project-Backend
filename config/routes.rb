Rails.application.routes.draw do

  get '/persist', to: 'tokens#persist'
  post '/tokens', to: 'tokens#create'
  
  resources :comments
  resources :organizations
  resources :messages
  resources :followings
  resources :species
  resources :users

 

 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
