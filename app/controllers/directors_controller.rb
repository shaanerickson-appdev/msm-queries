class DirectorsController < ApplicationController
  def index
    render({ :template => "director_templates/index"})
  end
  def details
    @id = params.fetch("id")
    render({ :template => "director_templates/details"})
  end
  def youngest
    @youngest = Director.where.not({ :dob => nil }).order(:dob).reverse.at(0)
    render({ :template => "director_templates/youngest"})
  end
  def eldest
    @eldest = Director.where.not({ :dob => nil }).order(:dob).at(0)
    render({ :template => "director_templates/eldest"})
  end
end
