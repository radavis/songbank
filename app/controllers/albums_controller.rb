class AlbumsController < ApplicationController
  def create
    artist = Artist.find(params[:artist_id])
    album = artist.albums.build(album_params)
    if album.save
      flash[:notice] = "New album created!"
    else
      flash[:error] = "Hey, you forgot something."
    end
    redirect_to artist
  end

  private

  def album_params
    params.require(:album).permit(:name)
  end
end
