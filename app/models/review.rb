class Review < ApplicationRecord
  belongs_to :user
  belongs_to :barber
  validates :rating, presence: true
end
