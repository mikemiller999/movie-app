class ActorsController < ApplicationController
  def actor_method
    console 'clear'
    console 'actor = Actor.find_by(id: "1"'
  end
end
