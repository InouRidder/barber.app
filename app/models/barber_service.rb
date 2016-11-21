class BarberService < ApplicationRecord
  has_many :appointments
  belongs_to :barber
  belongs_to :service
end
