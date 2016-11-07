class Barber < ApplicationRecord
  has_many :appointments, :reviews
  validates :name, :description, :services, :location, presence: true
end
