class Review < ApplicationRecord
  belongs_to :user
  belongs_to :barber
  mount_uploader :photo, PhotoUploader
  validates :rating, presence: true
end
