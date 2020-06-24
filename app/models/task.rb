class Task < ApplicationRecord
  acts_as_list
  belongs_to :room

  validates :title, :price, :room_id, presence: true

  def complete!
    update!(completed: true)
  end
end
