class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :restaurant, presence: true
  validates :rating, inclusion: { in: (0..5).to_a }
end
