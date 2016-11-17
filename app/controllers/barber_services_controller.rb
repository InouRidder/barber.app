class BarberServicesController < ApplicationController
  before_action :find_barber_service, only: [:destroy, :update]
  before_action :find_barber, only: [:destroy, :update, :create]
  before_action :find_service, only: [:create, :update]


  def new
    @barberservice = BarberService.new
  end

  def create
    @barberservice = BarberService.new(barberservice_params)
    @barberservice.name = @service.name
    @barberservice.barber = @barber
    @barberservice.save!
    redirect_to edit_barber_path(@barber)
  end

  # def update
  #   @barberservice.barber = @barber
  #   @barberservice.name = @service.name
  #   @barberservice.save!
  #   redirect_to barber_path(@barber)
  # end

  def destroy
    @barberservice.destroy
    redirect_to edit_barber_path(@barber)
  end

  private

  def barberservice_params
    params.require(:barber_service).permit(:price, :duration, :name)
  end

  def find_barber_service
    @barberservice = BarberService.find(params[:id])
  end

  def find_service
    @service = Service.find(params["barber_service"][:service_id])
  end

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end
end
