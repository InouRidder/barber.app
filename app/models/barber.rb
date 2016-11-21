class Barber < ApplicationRecord
  geocoded_by :location

  after_validation :geocode, if: :location_changed?
  include PgSearch

  multisearchable against: [:name], using: {tsearch: {any_word: true}}
    # using: { tsearch: { dictionary: 'english' } }

  belongs_to :user
  belongs_to :barbershop, optional: true
  has_many :appointments, through: :barber_services, dependent: :destroy
  has_many :barber_services, dependent: :destroy
  has_many :services, through: :barber_services
  has_many :reviews, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  mount_uploader :photo, PhotoUploader

  validates :name, :description, :location, presence: true

  def walk_distance(lat, lng)
    barber_lng = self.longitude
    barber_lat = self.latitude
    url = "https://maps.googleapis.com/maps/api/directions/json?origin=#{lat},#{lng}&destination=#{barber_lat},#{barber_lng}&sensor=false&mode=walking&key=#{ENV["GOOGLE_WEBS_API"]}"
    buffer = open(url).read
    result = JSON.parse(buffer)
    result["routes"][0]["legs"][0]["distance"]["text"]
  end

  def car_distance(lat, lng)
    barber_lng = self.longitude
    barber_lat = self.latitude
    url = "https://maps.googleapis.com/maps/api/directions/json?origin=#{lat},#{lng}&destination=#{barber_lat},#{barber_lng}&sensor=false&mode=driving&key=#{ENV["GOOGLE_WEBS_API"]}"
    buffer = open(url).read
    result = JSON.parse(buffer)
    result["routes"][0]["legs"][0]["distance"]["text"]
  end

  def walk_duration(lat, lng)
    barber_lng = self.longitude
    barber_lat = self.latitude
    url = "https://maps.googleapis.com/maps/api/directions/json?origin=#{lat},#{lng}&destination=#{barber_lat},#{barber_lng}&sensor=false&mode=walking&key=#{ENV["GOOGLE_WEBS_API"]}"
    buffer = open(url).read
    result = JSON.parse(buffer)
    result["routes"][0]["legs"][0]["duration"]["text"]
  end

  def car_duration(lat, lng)
    barber_lng = self.longitude
    barber_lat = self.latitude
    url = "https://maps.googleapis.com/maps/api/directions/json?origin=#{lat},#{lng}&destination=#{barber_lat},#{barber_lng}&sensor=false&mode=driving&key=#{ENV["GOOGLE_WEBS_API"]}"
    buffer = open(url).read
    result = JSON.parse(buffer)
    result["routes"][0]["legs"][0]["duration"]["text"]
  end

  def available_times
    array = []
    self.availabilities.each do |slot|
      if slot.appointment == nil
        array << slot
      end
    end
      return array
  end
end
