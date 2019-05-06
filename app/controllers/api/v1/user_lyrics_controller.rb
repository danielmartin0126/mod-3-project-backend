require 'rest-client'

class Api::V1::UserLyricsController < ApplicationController

  def index
    # @user_lyrics = UserLyric.all
    user = User.find(params[:id])

    # response = RestClient.get()
    # lyric = JSON.parse(response);
    # new_lyric = Lyric.create()


    render json: @user_lyrics
  end

    def create
    @song = Lyric.find_or_create_by(user_id:params[:user_id], lyric_id: params[:lyric_id])
    render json: @song
  end
end
