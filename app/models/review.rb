class Review < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: (0..5) }
end
