class ClothesController < ApplicationController
  before_action :set_clothe, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[show index]

  def index

    if params[:query].present?
      @clothes = Clothe.where("name ILIKE :query OR size ILIKE :query", query: "%#{params[:query]}%")
    else
      @clothes = Clothe.all
    end

    @rents = Rent.all

  end

  def show
  end

  def new
    @clothe = Clothe.new
  end

  def create
    @clothe = Clothe.new(clothe_params)
    @clothe.user = current_user
    if @clothe.save
      redirect_to clothe_path(@clothe), notice: "Prenda cargada exitosamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def clothe_params
    params.require(:clothe).permit(:name, :category, :price, :size, :gender, :description, photos: [])
    # agregar fotos
  end

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end
end

#probando pull request
