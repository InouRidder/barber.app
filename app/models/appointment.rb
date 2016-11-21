class Appointment < ApplicationRecord
  belongs_to :barber_service
  belongs_to :availability
  belongs_to :user
  has_one :barber, through: :barber_service
end
