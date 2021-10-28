class MoviesController < ApplicationController
  before_action :authenticate_admin, except: [:movie_method, :movies_method]
  def movie_method
    render json: Movie.find_by(id: params["input"])
  end

  def movies_method
    render json: Movie.all
  end

  def create
    m = Movie.create(title: params['title'], year: params['year'], plot: params['plot'], english: params['english'], director: params['director'])
    render json: {message: 'done'}
    if m.save
      m.save
    else
      render json: {message: "Validation failed, check inputs"}
    end
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
