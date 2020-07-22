class Floor < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_one :map, dependent: :destroy

  validates :title, :level, :area, :rooms_structure, :summary, presence: true
end
