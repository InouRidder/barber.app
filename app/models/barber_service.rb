class BarberService < ApplicationRecord
  has_many :services
  belongs_to :barber
end
