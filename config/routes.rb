Rails.application.routes.draw do

  get '/' => 'api/teams#index'
  get '/teams' => 'api/teams#index'
  get '/teams/:id' => 'api/teams#show'
  post '/teams' => 'api/teams#create'

  namespace :api do
    get '/' => 'teams#index'
    get '/teams' => 'teams#index'
    get '/teams/:id' => 'teams#show'
    post '/teams' => 'teams#create'
    patch '/teams/:id' => 'teams#update'
    delete '/teams/:id' => 'teams#destroy'
  end

end