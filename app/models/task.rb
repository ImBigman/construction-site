class Task < ApplicationRecord
  belongs_to :rooms

  validates %s(title price room_id), presence: true
end
