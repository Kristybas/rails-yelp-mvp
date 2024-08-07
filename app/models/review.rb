class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  ratings = (0..5)
  validates :rating, inclusion: { in: ratings}, numericality: {only_integer: true}

end
