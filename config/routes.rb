Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #resources :secrets, only: [:show]
  
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  get '/sessions/new', to: 'sessions#new'
  get '/logins', to: 'sessions#index'

  get '/secret', to: 'secrets#show'
  root 'secrets#index'
end
