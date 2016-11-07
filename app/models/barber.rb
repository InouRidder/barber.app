class Barber < ApplicationRecord
  has_many :appointments
  has_many :reviews
  validates :name, :description, :services, :location, presence: true
end
