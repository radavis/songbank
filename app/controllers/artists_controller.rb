class ArtistsController < ApplicationController
  def index
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      flash[:notice] = "New artist created!"
      redirect_to artists_path
    else
      flash[:error] = "Fill out the form, silly."
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
    @album = Album.new
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end

