class Api::V1::LyricsController < ApplicationController
  def index
    @lyrics = Lyric.all
    render json: @lyrics
  end

  def new_song
    user = User.find(params[:user_id])
    if user.user_lyrics.all.length == Lyric.all.length
      lyric = {error: "You are out of songs"}
      
    else
      lyric = Lyric.all.sample
  
      
      while UserLyric.find_by(user_id: user.id, lyric_id: lyric.id)
        lyric = Lyric.all.sample
      end
  
      UserLyric.create(user_id: user.id, lyric_id: lyric.id)
    
    end

    render json: lyric
  end

end
