class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validate :rating, inclusion: { in: (0..5) }
end
