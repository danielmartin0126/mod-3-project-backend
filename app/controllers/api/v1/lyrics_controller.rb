class Api::V1::LyricsController < ApplicationController
  def index
    @lyrics = Lyric.all
    render json: @lyrics
  end

  def new_song
    user = User.find(params[:id])
    @lyric = Lyric.all.sample
    
    while UserLyric.find_by(user_id: user.id, lyric_id: lyric.id)
      @lyric = Lyric.all.sample
    end

    UserLyric.create(user_id: user.id, lyric_id: lyric.id)

    render json: @lyric
  end

end
