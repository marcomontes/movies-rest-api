class Movie < ApplicationRecord

  has_many :roles
  has_many :casting,   -> { where(roles: { name: 'Actor/Actress' })}, through: :roles, source: :person, dependent: :delete_all
  has_many :directors, -> { where(roles: { name: 'Director' })}, through: :roles, source: :person, dependent: :delete_all
  has_many :producers, -> { where(roles: { name: 'Producer' })}, through: :roles, source: :person, dependent: :delete_all

  validates :title, presence: true
  validates :release_year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1900, less_than_or_equal_to: Time.now.year }, length: { is: 4 }

end
