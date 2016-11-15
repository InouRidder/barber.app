class BarberServicesController < ApplicationController
  before_action :find_barber_service, only: [:update, :destroy]
  before_action :find_service, :find_barber, only: [:update, :destroy, :create]


  def new
    @barberservice = BarberService.new
  end

  def create
    @barberservice = BarberService.new(barberservice_params)
    @barberservice.service = @service
    @barberservice.price = params["price"]
    @barberservice.price = params["duration"]
    @barberservice.barber = @barber
    @barberservice.save!
    redirect_to barber_path(@barber)
  end

  def update
    @barberservice.service = @service
    @barberservice.service = @service
    @barberservice.price = params["price"]
    @barberservice.price = params["duration"]
    @barberservice.barber = @barber
    @barberservice.save!
    redirect_to barber_path(@barber)
  end

  def destroy
    @barberservice.destroy
    redirect_to barber_path(@barber)
  end

  private

  def barberservice_params
    require.params[:barber_service].permit[:duration, :price]
  end

  def find_barber_service
    @barberservice = BarberService.find(params[:id])
  end

  def find_service
    @service = Service.find(params[:service_id])
  end

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end

end
