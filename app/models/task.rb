class Task < ApplicationRecord
  acts_as_list
  belongs_to :room

  validates :title, :price, :room_id, presence: true
end
