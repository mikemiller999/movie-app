class MovieGenresController < ApplicationController

  def create
    a = MovieGenres.create(
      movie_id: params[:movie_id],
      actor_id: params[:actor_id]
    )
    if a.save
      render json: {message: 'done'}
    else
      render json: (message: 'Validation failed')
    end
    
  end

end
