class Appointment < ApplicationRecord
  belongs_to :barber
  belongs_to :user
  validates :date, presence: true
  # validates :services, precense: true
end
