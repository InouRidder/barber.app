class Appointment < ApplicationRecord
  belongs_to :barber_service
  belongs_to :user
  validates :date, presence: true
  # validates :services, precense: true
end
