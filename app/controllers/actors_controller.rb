class ActorsController < ApplicationController
  def index
    render({ :template => "actor_templates/index"})
  end
  def details
    @id = params.fetch("id")
    @actor = Actor.where({ :id => @id }).at(0)
    @roles = Character.where({ :actor_id => @id })
    render({ :template => "actor_templates/details"})
  end
end
