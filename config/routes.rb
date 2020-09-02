Rails.application.routes.draw do
    get 'secrets/new'
    get '/secret', to: 'secrets#show'

    root 'application#hello'
    get '/login', to: 'sessions#new', as: 'new_session'
    post '/login', to: 'sessions#create'
    post '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
