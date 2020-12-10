class SongsController < ApplicationController
  before_action :set_billboard
  before_action :set_song, only: [:show, :edit, :update, :destroy ]
  
  def index
    @songs = @billboard.songs
  end
   
  def show
  end
  
  def new
    @artists = Artist.all = @billboard.artist
    @song = @billboard.songs.new
  end
  
  def create
    @song = billboard.song.new(song_params)
    if @song.save
      redirect_to billboard_songs_path(@billboard)
    else
      render :new
    end
  end

    
  def edit
    @artists = Artist.all = @billboard.artists

  end
  
  
  def update
      if @song.update(song_params)
      redirect_to billboard_songs_path(@billboard)

      else
        render :edit
      end
  end
  
  def destroy
   @song.destroy
   redirect_to billboard_songs_path(@billboard)
  end

def set_song
  @song = @billboard.songs.find(params[:id])
end

def enrollment_params
    params.require(:song).permit(:artist_id)
  end 
  
  private
  
  def set_billboard
    @billboard = Billboard.find(params[:billboard_id])
  end
  end