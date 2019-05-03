class UserLyric < ApplicationRecord
  belongs_to :user
  belongs_to :lyric
end
