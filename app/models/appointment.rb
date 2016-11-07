class Appointment < ApplicationRecord
  belongs_to :barber, :user
  validates :date, presence: true
end
