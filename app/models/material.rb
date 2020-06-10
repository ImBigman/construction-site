class Material < ApplicationRecord
  has_many :materials, dependent: :destroy
  has_many :furnitures, dependent: :destroy
  has_many :tasks, dependent: :destroy
  belongs_to :floors

  validates %s(name area floor_id), presence: true
end
