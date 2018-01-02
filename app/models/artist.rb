class Artist < ApplicationRecord
 #------------------------------ Associations --------------------------------
  belongs_to :location
  has_many :artist_tags
  has_many :tags, through: :artist_tags
  #------------------------------- Validations --------------------------------
  validates_presence_of :name , :location

  #--------------------------------- Methods ----------------------------------

  def self.search(kword ,page)
    if kword
      where('lower(name) LIKE ?', "%#{kword.downcase}%").paginate(page: page, per_page: 10)
    else
      paginate(page: page, per_page: 10)
    end
  end
end
