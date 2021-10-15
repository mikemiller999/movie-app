class MoviesController < ApplicationController
  def movie_method
    render json: Actor.find_by(id: params["input"])
  end

  def movies_method
    render json: Actor.all
  end
end
