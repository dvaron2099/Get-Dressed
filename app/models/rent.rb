class Rent < ApplicationRecord
  belongs_to :clothe
  belongs_to :user
  # validar que la fecha de retorno sea mayor(posterior) o igual a la de pickup
  # validar que un usuario no se pueda alquilar su propia ropa
  before_create :set_status
  def set_status
    self.status = false
  end
end
