Rails.application.routes.draw do
  get '/' => 'teams#index'
  get '/teams' => 'teams#index'
  get '/teams/:id' => 'teams#show'
end
