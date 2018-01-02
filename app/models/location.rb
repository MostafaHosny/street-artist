class Location < ApplicationRecord
  #------------------------------ Associations --------------------------------
  has_many :artists
  #------------------------------- Validations --------------------------------
  validates_presence_of :name 
end
