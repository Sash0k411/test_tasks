class Song < ApplicationRecord
  has_many :downloads
  belongs_to :artist, optional: true
end
