Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#home'
  resources :sessions, only: [:new, :create,]
  get '/show' => 'secrets#show'
  post '/logout' => 'sessions#destroy'
end
