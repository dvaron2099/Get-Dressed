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
    @user = current_user
    @clothe = Clothe.find(params[:clothe_id])
    @rent = Rent.new(rent_params)
    @rent.clothe_id = @clothe.id
    @rent.user = current_user
    #Rent.validar_fecha(params[:rent][:pickup_date], params[:rent][:return_date], @clothe)

      if Date.parse(params[:rent][:pickup_date]) < Date.today
        @rent.errors.add("no puede ser una fecha inferior a la de hoy")
        one = true
      end
      if Rent.where(clothe_id: @clothe.id).find_by(pickup_date: Date.parse(params[:rent][:pickup_date])) || Rent.where(clothe_id: @clothe.id).find_by(return_date: Date.parse(params[:rent][:return_date]))
          #antes qu e la fecha de retorno mas temprana
        @rent.errors.add("Ya se encuentra reservada para tus fechas")
        dos = true
      end

      if !one && !dos
        if @rent.save
          redirect_to rents_path, notice: "Acabas de alquilar esta prenda"
          ## Modificar n  luego para que lo vea en la vista del usuario en una lista de reservas
        else
          render :new, status: :unprocessable_entity
        end
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
