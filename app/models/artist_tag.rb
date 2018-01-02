class ArtistTag < ApplicationRecord
  #------------------------------ Associations --------------------------------
  belongs_to :artist
  belongs_to :tag
end
