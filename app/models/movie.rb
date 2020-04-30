class Movie < ApplicationRecord

  has_many :roles
  has_many :casting,   -> { where(roles: { name: 'Actor/Actress' })}, through: :roles, source: :person
  has_many :directors, -> { where(roles: { name: 'Director' })}, through: :roles, source: :person
  has_many :producers, -> { where(roles: { name: 'Producer' })}, through: :roles, source: :person

end
