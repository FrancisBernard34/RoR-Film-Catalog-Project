class Film < ApplicationRecord
  has_one_attached :poster, dependent: :purge
  belongs_to :director
  belongs_to :genre

  validates :title, presence: true
  validates :release_year, presence: true
  validates :synopsis, presence: true
  validates :country_of_origin, presence: true
  validates :duration, presence: true
  validates :released, inclusion: { in: [true, false]}
end
