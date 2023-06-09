class Rent < ApplicationRecord
  belongs_to :clothe
  belongs_to :user
  # validar que la fecha de retorno sea mayor(posterior) o igual a la de pickup
  # validar que un usuario no se pueda alquilar su propia ropa
  before_create :set_status
  before_save :fechas

  validates :pickup_date, :return_date, presence: true

  def set_status
    self.status = false
  end

  def fechas
    if Rent.where(clothe_id: clothe_id).where("(pickup_date, return_date) OVERLAPS (?, ?)", pickup_date, return_date).exists?
      errors.add(:base, "Ya existe una reserva para esta prenda en el rango de fechas especificado")
      throw(:abort)
    end
  end

end
