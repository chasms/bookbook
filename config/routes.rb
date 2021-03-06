Rails.application.routes.draw do

  get '/signup', to: 'accounts#new'
  post '/signup', to: 'accounts#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resource :tags, only: [:show]
  resource :bookmarks, except: [:show]
  resource :accounts, only: [:show]
  get '/', to: 'sessions#new', as: 'root'
  
end
