class Director < ApplicationRecord
  has_many :films
  validates :name, presence: true, uniqueness: true
  validates :nationality, presence: true
  validates :date_of_birth, presence: true
  validates :favorite_genre, presence: true
end
