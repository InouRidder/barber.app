class BarbersController < ApplicationController
  before_action :find_barber, only: [:show, :edit, :update, :destroy]
  before_action :find_user, only: [:create]

  def index
   @barbers = Barber.where.not(latitude: nil, longitude: nil)

    @coordinates = Gmaps4rails.build_markers(@barbers) do |barber, marker|
     marker.lat barber.latitude
     marker.lng barber.longitude
     marker.infowindow render_to_string(partial: "/barbers/map_box", locals: { barber: barber })
    end
  end

  def show
    @barbershop = @barber.barbershop
    @coordinates = Gmaps4rails.build_markers(@barber) do |barber, marker|
      marker.lat barber.latitude
      marker.lng barber.longitude
    end
  end

  def new
    if current_user.barber
      flash[:notice] = 'You are already have a profile bro!'
      redirect_to barber_path(current_user.barber)
    else
    @barber = Barber.new
    @services = Service.all
    end
  end

  def create
    @barber = Barber.new(barber_params)
    @barber.user = @user
    @barber.save!
    redirect_to barber_path(@barber)
  end

  def edit
    @barberservice = BarberService.new
    @services = Service.all
  end

  def update
    @barber.update(barber_params)
    redirect_to barber_path(@barber)
  end

  def destroy
    @barber.destroy
    redirect_to barbers_path
  end

  private

  def find_user
    @user = current_user
  end

  def find_barber
    @barber = Barber.find(params[:id])
  end

  def barber_params
    params.require(:barber).permit(:name, :description, :location, :services, :photo, :photo_cache)
  end

end
