class BarbersController < ApplicationController

  before_action :find_barber, only: [:show, :edit, :update, :destroy]

  def index
    @barbers = Barber.where.not(latitude: nil, longitude: nil)
    # @barbers = Barber.all

    @coordinates = Gmaps4rails.build_markers(@barbers) do |barber, marker|
      marker.lat barber.latitude
      marker.lng barber.longitude
    end
  end

  def show
    @coordinates = Gmaps4rails.build_markers(@barber) do |barber, marker|
      marker.lat barber.latitude
      marker.lng barber.longitude
    end

  end

  def new
    @barber = Barber.new
  end

  def create
    @barber = Barber.create(barber_params)
    redirect_to barbers_path
  end

  def edit
  end

  def update
    @barber.update(barber_params)
    redirect_to barbers_path
  end

  def destroy
    @barber.destroy
    redirect_to barbers_path
  end

  private

  def find_barber
    @barber = Barber.find(params[:id])
  end

  def barber_params
    params.require(:barber).permit(:name, :description, :location, :services)
  end

end
