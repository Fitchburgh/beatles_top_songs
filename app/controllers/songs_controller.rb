class SongsController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def guess
  end

  def search
    @song = Song.find_by(song_params)

    unless session.key? :guessed_songs
      session[:guessed_songs] = []
    end

    session[:guessed_songs] << @song.title if !@song.nil?
  end

  def song_params
    params.require(:song).permit(:title)
  end
end
