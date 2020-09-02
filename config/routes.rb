Rails.application.routes.draw do

  root "application#home"

  get "/login" => "sessions#new", as: "login"

  post "/login" => "sessions#create"

  delete "/logout" => "sessions#destroy", as: "logout"

  get "/secret" => "secrets#show", as: "secret"


end


# root 'application#home'
# get '/login', to: 'sessions#new', as: 'login'
# get '/secret', to: 'sessions#secret', as: 'secret'
# post 'logged', to: 'sessions#create'
# delete '/logout', to: 'sessions#destroy', as: 'logout'