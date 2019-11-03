class SongsController < ApplicationController
  before_action :set_song, only: [:show, :edit, :update]

  def show
    # code
  end

  def new
    @song = Song.new
  end

  def create
    # code
    @song = Song.create(song_params)
    redirect_to song_path(@song)
  end

  def update
    @song.update(song_params)
    redirect_to song_path(@song)
  end

  def edit
    # code
  end
  def index
    @songs = Song.all
  end

  private

  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit!
    # code
  end
end
