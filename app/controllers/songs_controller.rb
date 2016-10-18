class SongsController < ApplicationController
  def guess
  end

  def search
    @song = Song.find_by(song_params)

    session[:guessed_songs] = @song.title

  end

  def song_params
    params.require(:song).permit(:title)
  end
end
