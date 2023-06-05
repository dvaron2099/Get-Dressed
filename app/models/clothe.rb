class Clothe < ApplicationRecord
  belongs_to :user
  has_many :rents
  # has_many_attached :photos
  validates :price, :size, :description, :category, presence: true
end
