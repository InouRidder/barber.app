class BarberService < ApplicationRecord
  belongs_to :appointment, optional: true
  belongs_to :barber
  belongs_to :service
end
