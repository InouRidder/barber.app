class User < ApplicationRecord
  has_many :appointments
  has_many :reviews
  validates :name, :email, presence: true
end
