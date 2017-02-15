class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates_numericality_of :rating
  validates_inclusion_of :rating, in: 0..5

  # validates :rating, numericality: true, inclusion: {in: 0..5}

end


# A review must have a parent restaurant.
# A review must have a content and a rating. The rating should be a number between 0 and 5.
# Validate all models tests before mo
