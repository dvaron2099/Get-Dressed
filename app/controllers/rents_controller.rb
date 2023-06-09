class RentsController < ApplicationController

  def new
    @rent = Rent.new
    @clothe = Clothe.find(params[:clothe_id])
    @reservations = @clothe.rents.where(clothe_id: params[:clothe_id])
  end

  def buscar

    buscar la ropa rentada where pick_date and return_date; no sean los enviados por este usuario

  end

  def create
    @clothe = Clothe.find(params[:clothe_id])
    @rent = Rent.new(rent_params)
    @rent.clothe_id = @clothe.id
    @rent.user_id = current_user.id
    p @rent.valid?

    if @rent.save
      redirect_to rents_path(@clothe), notice: "Acabas de alquilar esta prenda"     ## Modificar luego para que lo vea en la vista del usuario en una lista de reservas
    else
      render :new, status: :unprocessable_entity
    end
  end

  def my_rents

  end

  def my_offers

  end

  def edit
    @rent = Rent.find(params[:id])

  end

  def update
    @rent = Rent.find(params[:id])
    @rent.status = params[:status]
    if @rent.save
      redirect_to offers_path
    else
      render :edit, status: unprocessable_entity
    end
  end

  private

  def rent_params
    params.require(:rent).permit(:status, :return_date, :pickup_date)
  end
end
