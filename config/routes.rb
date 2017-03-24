Rails.application.routes.draw do

  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/', to: 'sessions#new', as: 'root'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
