class Person < ApplicationRecord

  has_many :roles
  has_many :movies_as_actor,    -> { where(roles: { name: 'Actor/Actress' })}, through: :roles, source: :movie, dependent: :delete_all
  has_many :movies_as_director, -> { where(roles: { name: 'Director' })}, through: :roles, source: :movie, dependent: :delete_all
  has_many :movies_as_producer, -> { where(roles: { name: 'Producer' })}, through: :roles, source: :movie, dependent: :delete_all

  validates :first_name, :last_name, presence: true

  def alias_names
    aliases.join(', ')
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
