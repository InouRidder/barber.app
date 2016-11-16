class Appointment < ApplicationRecord
  has_one :barber_service
  belongs_to :user
  has_one :barber, through: :barber_service
  validates :date, presence: true
  # validates :services, precense: true
end
