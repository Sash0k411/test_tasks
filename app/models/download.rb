class Download < ApplicationRecord
  belongs_to :song, optional: true
end
