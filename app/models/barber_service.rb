class BarberService < ApplicationRecord
  belongs_to :service
  belongs_to :barber
end
