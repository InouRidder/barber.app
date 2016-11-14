class Service < ApplicationRecord
  has_many :barbers
  has_many :appointments
end
