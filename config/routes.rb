Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/actor", controller: "actors", action: "actor_method"
  get '/movie/:input' => 'movies#movie_method'
  get '/movies' => 'movies#movies_method'
end
