Rails.application.routes.draw do
  root 'sessions#new'
  get 'secrets/show'

  post 'sessions/create'
  get 'sessions/new'
  get 'sessions/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
