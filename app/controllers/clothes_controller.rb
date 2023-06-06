class ClothesController < ApplicationController
  before_action :set_clothe, only: %i[show]
  def index
    @clothes = Clothe.all
  end

  def show
  end

  private

  def set_clothe
    @clothe = Clothe.find(params[:id])
  end
end
