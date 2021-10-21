class ActorsController < ApplicationController
  def actor_method
    render json: Actor.find_by(id: params["id"])
  end

  def create
    a = Actor.new(first_name: "#{params['first_name']}", last_name: "#{params['last_name']}", known_for: "#{params['fknown_for']}", age: "#{params['age']}")

    if a.save
      a.save
    else
      render json: {message: "Validation failed, check inputs"}
    end
  end
end
