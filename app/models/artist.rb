class Artist < ApplicationRecord
  has_many :songs, -> { order(title: :asc) }
  has_many :downloads, through: :songs
  has_many :songs_top, -> { popular }, class_name: "Song" # вызываем songs.popular

  scope :top, -> (char, count) do
    popular.where("name ilike ?", "%#{char}%").first(count)
  end

  scope :popular, -> do
    joins(:downloads).group("artists.id").order("COUNT(downloads.id) desc")
  end
end
