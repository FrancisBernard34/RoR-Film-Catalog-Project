class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
  end

  def new
  end

  def create
    # director has the fields name, nationality, date_of_birth, favorite_genre
    @director = Director.new(params.require(:director).permit(:name, :nationality, :date_of_birth, :favorite_genre))
    # check if director already exists
    if Director.exists?(name: @director.name)
      flash[:notice] = "Director already exists!"
      redirect_to new_director_path
    else
      @director.save
      redirect_to directors_path
    end
  end

  def edit
    @director = Director.find(params[:id])
  end

  def update
    @director = Director.find(params[:id])
    @director.update(params.require(:director).permit(:name, :nationality, :date_of_birth, :favorite_genre))
    redirect_to director_path(@director)
  end
end
