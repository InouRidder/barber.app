class BarbershopsController < ApplicationController

before_action :find_barbershop, only: [:index]

  def index

  end

  private

  def find_barbershop
    @barbershop = Barbershop.find(params[:id])
  end

  def barber_params
    params.require(:barbershop).permit(:name, :description, :location)
  end


end
