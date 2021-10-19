Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actor/:id", controller: "actors", action: "actor_method"
  get '/movie/:input' => 'movies#movie_method'
  get '/movies' => 'movies#movies_method'
  post '/m_create' => 'movies#create'
  patch '/m_update' => 'movies#update'
  delete '/m_delete/:id' => 'movies#delete'
end
