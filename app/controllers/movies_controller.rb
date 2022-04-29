class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/index"})
  end
  def details
    @id = params.fetch("id")
    @movie = Movie.where({ :id => @id}).at(0)
    @dir = Director.where({ :id => @movie.director_id }).at(0)
    render({ :template => "movie_templates/details"})
  end
end
