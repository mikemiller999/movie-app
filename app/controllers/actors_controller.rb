class ActorsController < ApplicationController
  #before_action :authenticate_admin, except: [:actor_method]
  def actors_method
    render json: Actor.all
  end

  def create
    a = Actor.new(first_name: "#{params['first_name']}", last_name: "#{params['last_name']}", known_for: "#{params['known_for']}", age: "#{params['age']}", gender: params['gender'])

    if a.save
      a.save
    else
      render json: {message: "Validation failed, check inputs"}
    end
  end
end
