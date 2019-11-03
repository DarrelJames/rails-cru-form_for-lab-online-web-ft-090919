class GenresController < ApplicationController
  before_action :set_genre, only: [:show, :edit, :update]

  def show
    # code
  end

  def new
    @genre = Genre.new
  end

  def create
    # code
    @genre = Genre.create(genre_params)
    redirect_to genre_path(@genre)
  end

  def update
    @genre.update(genre_params)
    redirect_to genre_path(@genre)
  end

  def edit
    # code
  end
  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def genre_params
    params.require(:genre).permit!
    # code
  end
end
