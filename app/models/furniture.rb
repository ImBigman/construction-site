class Furniture < ApplicationRecord
  belongs_to :rooms

  validates :title, :type, :quantity, :price_per_unit, :summary, :room_id, presence: true
end
