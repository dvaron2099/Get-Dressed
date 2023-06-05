class Rent < ApplicationRecord
  belongs_to :clothe
  belongs_to :user
  before_create :set_status
  def set_status
    self.status = false
  end
end
