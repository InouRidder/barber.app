class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
  before_action :find_user, only: [:show, :new, :destroy, :edit, :create, :update, :index]
  before_action :find_barber_service, only: [:create]
  before_action :find_barber, only: [:show, :index, :new, :destroy, :edit, :create, :update]
  before_action :find_availability, only: [:create]

  def index
    @availability = Availability.new
    @availabilities = Availability.where(barber: @barber)

    @appointments = @barber.appointments
    #@appointments_by_date = @appointments.group_by(&:date).map { |k, v| [k.to_date, v] }.to_h
    @user = current_user
    #@date = params[:date] ? Date.parse(params[:date]) : Date.today
    @date = Date.today
  end

  def show
  end

  def new
    @barber_services = @barber.barber_services
    @appointments = @barber.appointments
    #@appointments_by_date = @appointments.group_by(&:date).map { |k, v| [k.to_date, v] }.to_h
    @appointment = Appointment.new
    #@date = params[:date] ? Date.parse(params[:date]) : Date.today
    @date = Date.today
  end

  def create
    @appointment = Appointment.new(params_appointment)
    @appointment.barber_service_id = @barber_service.id
    @appointment.availability_id = @availability.id
    @appointment.user = current_user
    @availability.appointment = @appointment.id
    @availability.save!
    @appointment.save!
    if @appointment.save != true
      flash[:notice] = "Please fill out the form properly"
      redirect_to new_barber_appointment_path(@barber)
    else
      if current_user.barber
        redirect_to barber_appointment_path(@barber, @appointment)
      else
        redirect_to barber_appointment_path(@barber, @appointment)
      end
    end
  end

  # def edit
  #       @barber_services = @barber.barber_services

  # end

  # def update
  #   @appointment.barber_service = @barber_service
  #   raise
  #   @appointment.update(params_appointment)
  #   if current_user.barber
  #     redirect_to barber_appointments_path(@barber, @appointment)
  #   else
  #     redirect_to barber_appointment_path(@barber, @appointment)
  #   end
  # end

  def destroy
    @appointment.destroy
    if current_user.barber == @barber
      redirect_to barber_appointments_path(@barber)
     else
      redirect_to root_path
    end
  end

  private

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def find_barber_service
    @barber_service = BarberService.find(params["appointment"][:barber_service])
  end

  def find_user
    @user = current_user
  end

  def find_availability
    @availability = Availability.find(params["appointment"][:availability_id])
  end

  def params_appointment
    params.require(:appointment).permit(:availability_id, :barber_service_id, :id).merge(user_id: current_user.id)
  end
end
