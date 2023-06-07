class RentsController < ApplicationController

  def new
    @rent = Rent.new
    @clothe = Clothe.find(params[:clothe_id])
    @user = current_user
  end

  def create
    @user = current_user
    @clothe = Clothe.find(params[:clothe_id])
    @rent = Rent.new(rent_params)
    @rent.clothe_id = @clothe.id
    @rent.user_id = @user.id
    if @rent.save
      redirect_to clothe_path(@clothe), notice: "Acabas de alquilar esta prenda"     ## Modificar luego para que lo vea en la vista del usuario en una lista de reservas
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
    @rent =  Rent.find(params[:id])
    @rent.status = params[:status]
    @rent.save
  end

  private

  def rent_params
    params.require(:rent).permit(:status, :return_date, :pickup_date)
  end
end
