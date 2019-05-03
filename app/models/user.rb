class User < ApplicationRecord
  has_many :user_lyrics
  has_many :lyrics, through: :user_lyrics
end
