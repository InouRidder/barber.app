class Barber < ApplicationRecord
  geocoded_by :location

  after_validation :geocode, if: :location_changed?
  include PgSearch

  multisearchable against: [:name], using: {tsearch: {any_word: true}}
    # using: { tsearch: { dictionary: 'english' } }

  belongs_to :user
  belongs_to :barbershop, optional: true
  has_many :appointments, dependent: :destroy
  has_many :barberservices, dependent: :destroy
  has_many :reviews, dependent: :destroy
  mount_uploader :photo, PhotoUploader


  validates :name, :description, :services, :location, presence: true
end
