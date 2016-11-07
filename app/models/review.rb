class Review < ApplicationRecord
  belongs_to :users, :barbers
  validates :rating
end
