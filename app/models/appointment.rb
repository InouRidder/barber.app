class Appointment < ApplicationRecord
  belongs_to :barber
  belongs_to :user
  validates :datetime, presence: true
  # validates :services, precense: true
end
