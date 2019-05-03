class Api::V1::UserLyricsController < ApplicationController

  def index
    @user_lyrics = UserLyric.all
    render json: @user_lyrics
  end
end
