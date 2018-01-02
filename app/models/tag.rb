class Tag < ApplicationRecord
 #------------------------------ Associations --------------------------------
  has_many :artist_tags
  has_many :artists, through: :artist_tags
end
