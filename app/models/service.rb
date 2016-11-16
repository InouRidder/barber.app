class Service < ApplicationRecord
  has_many :barber_services
  has_many :barbers, through: :barber_services
end
