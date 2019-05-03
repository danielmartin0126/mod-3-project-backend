class Api::V1::LyricsController < ApplicationController
  def index
    @lyrics = Lyric.all
    render json: @lyrics
  end
end
