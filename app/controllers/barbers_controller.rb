class BarbersController < ApplicationController

  before_action :find_barber, only: [:show]

  def index
    @barbers = Barber.all
  end

  def show
  end

  def new
    @barber = Barber.new
  end

  def create
    @barber = Barber.create()
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_barber
    @barber = Barber.find(params[:id])
  end

  def barber_params
    params.require(:barber).permit(:name, :description, :services)
  end

end
