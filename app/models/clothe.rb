class Clothe < ApplicationRecord
  belongs_to :user
  has_many :rents, dependent: :destroy
  has_many_attached :photos
  validates :price, :size, :description, :category, presence: true
end
