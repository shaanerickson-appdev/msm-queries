class MoviesController < ApplicationController
  def index
    render({ :template => "movie_templates/index"})
  end
  def details
    @id = params.fetch("id")
    @movie = Movie.where({ :id => @id})
    render({ :template => "movie_templates/details"})
  end
end
