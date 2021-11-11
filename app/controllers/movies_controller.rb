class MoviesController < ApplicationController

  def index
    @movies = Movies.all
  end

  def show
    @movies = Movie.find(params[:id])
  end

  def new
    @movies = Movies.new
  end

  def create
    @movies = Movies.create(movie_params)
    movie.save
    redirect_to movie_path(@movie.id)
  end
end
