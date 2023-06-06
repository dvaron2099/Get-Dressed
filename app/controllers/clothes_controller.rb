class ClothesController < ApplicationController
  before_action :set_clothe, only: %i[show]
  def index
    @clothes = Clothe.all
  end

  def show
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)
    if @clothe.save
      redirect_to clothe_path(@clothe), notice: "Prenda cargada exitosamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :category, :price, :size, :gender, :description)
    # agregar fotos
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end
end
