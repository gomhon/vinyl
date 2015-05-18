class AlbumsController < ApplicationController
  def index
  end

  def new
    @album = Album.new
  end

  def destroy
  end

   def create
     @album = Album.new(album_params)
     if @album.save
       redirect_to root_path
     end
   end

  def show
  end

  private
    def album_params
   params.require(:album).permit(:title, :description, :genre)
    end
end
