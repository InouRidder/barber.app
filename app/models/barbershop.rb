class Barbershop < ApplicationRecord
  include PgSearch
  multisearchable against: [:name], using: {tsearch: {any_word: true}}

  has_many :barbers
end
