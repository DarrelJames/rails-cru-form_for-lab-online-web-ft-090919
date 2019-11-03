class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update]

  def show
    # code
  end

  def new
    @artist = Artist.new
  end

  def create
    # code
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def update
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    # code
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit!
    # code
  end
end
