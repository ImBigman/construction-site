class Room < ApplicationRecord
  has_many :materials, dependent: :destroy
  has_many :furnitures, dependent: :destroy
  has_many :tasks, dependent: :destroy
  belongs_to :floor

  validates :name, :area, :floor_id, presence: true
end
