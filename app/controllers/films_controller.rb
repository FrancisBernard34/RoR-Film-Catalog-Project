class FilmsController < ApplicationController
  def index
    if params[:genre_id].present?
      @filter_name = Genre.find(params[:genre_id]).name
      @films = Film.where(genre_id: params[:genre_id])
    elsif params[:director_id].present?
      @filter_name = Director.find(params[:director_id]).name
      @films = Film.where(director_id: params[:director_id])
    else
      @films = Film.all
   end
  end

  def show
    @film = Film.find(params[:id])
  end

  def new
  end

  def create
    @film = Film.new(params.require(:film).permit(:title, :release_year, :synopsis, :country_of_origin, :duration, :released, :director_id, :genre_id, :poster))
    @film.save
    redirect_to films_path
  end

  def edit
    @film = Film.find(params[:id])
  end

  def update
    @film = Film.find(params[:id])
    @film.update(params.require(:film).permit(:title, :release_year, :synopsis, :country_of_origin, :duration, :released, :director_id, :genre_id, :poster))
    redirect_to film_path(@film)
  end

  def destroy
    @film = Film.find(params[:id])
    @film.destroy
    redirect_to films_path
  end
end
