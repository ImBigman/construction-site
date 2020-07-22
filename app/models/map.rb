class Map < ApplicationRecord
  belongs_to :floor

  validates :name, :floor_id, presence: true
end
