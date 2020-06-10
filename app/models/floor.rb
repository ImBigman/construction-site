class Floor < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_many :map, dependent: :destroy

  validates %s(title level area rooms_structure summary), presence: true
end
