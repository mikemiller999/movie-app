class MoviesController < ApplicationController
  def movie_method
    render json: Movie.find_by(id: params["input"])
  end

  def movies_method
    render json: Movie.all
  end

  def create
    Movie.create(title: params['title'], year: params['year'], plot: params['plot'])
    render json: {message: 'done'}
  end

  def update
    m = Movie.find_by(id: params["id"])
    m.title = params['title']
    render json: {message: 'done'}
  end

  def delete
    m = Movie.find_by(id: params["id"].to_i)
    m.destroy
    render json: {message: 'done'}
  end
end
