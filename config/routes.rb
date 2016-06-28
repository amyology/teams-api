Rails.application.routes.draw do

  get '/' => 'teams#index'
  get '/teams' => 'teams#index'
  get '/teams/:id' => 'teams#show'

  namespace :api do
    get '/teams' => 'teams#index'
    post '/teams' => 'teams#create'
    patch '/teams/:id' => 'teams#update'
    delete '/teams/:id' => 'teams#destroy'
  end

end