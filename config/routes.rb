Rails.application.routes.draw do

  root 'application#home'
  get '/login', to: 'sessions#new', as: 'login'
  get '/secret', to: 'sessions#secret', as: 'secret'
  post 'logged', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
