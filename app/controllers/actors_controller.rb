class ActorsController < ApplicationController
  def actor_method
    render json: Actor.find_by(id: params[input])
  end
end
