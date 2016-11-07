class User < ApplicationRecord
  has_many :appointments, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, :email, presence: true
end
