class Map < ApplicationRecord
  belongs_to :floors

  validates :name, :floor_id, presence: true
end
