class Artist < ApplicationRecord
  has_many :songs
  # has_many :songs_top, -> { joins(songs: :downloads).merge(Song.popular)}
end
