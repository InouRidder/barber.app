class Availability < ApplicationRecord
  include PgSearch
  multisearchable against: [:start], using: {tsearch: {any_word: true}}

  belongs_to :barber
end
