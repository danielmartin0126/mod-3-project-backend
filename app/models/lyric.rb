class Lyric < ApplicationRecord
  has_many :user_lyrics
  has_many :users, through: :user_lyrics
end
