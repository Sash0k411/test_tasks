class Song < ApplicationRecord
  belongs_to :artist
  has_many :downloads

  scope :top, -> (days, count) do
    popular.where("downloads.created_at > ?", days.days.ago).first(count)
  end

  scope :popular, -> do
    joins(:downloads).group("songs.id").order("COUNT(downloads.id) desc")
  end
end
