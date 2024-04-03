class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def new
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    # check if genre already exists
    if Genre.exists?(name: @genre.name)
      flash[:notice] = "Genre already exists!"
      redirect_to new_genre_path
    else
      @genre.save
      redirect_to genres_path
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genres_path
  end
end
