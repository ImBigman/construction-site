class Map < ApplicationRecord
  belongs_to :floors

  validates %s(name floor_id), presence: true
end
