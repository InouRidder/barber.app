class Availability < ApplicationRecord
  include PgSearch
  multisearchable against: [:start], using: {tsearch: {any_word: true}}
  has_one :appointment
  belongs_to :barber
end


