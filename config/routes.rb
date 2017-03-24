Rails.application.routes.draw do

  get 'tags/index'

  get 'tags/show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resource :tags, only: [:index, :show]
  resource :bookmarks, except: [:show]
  resource :accounts, only: [:show]
end
