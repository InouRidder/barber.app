class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
  before_action :find_barber
  def index
    @appointments = Appointment.all
    if @appointments.length == 0
      flash[:alert] = "You have no appointments. Create one now to get started."
    end
  end

  def new
    @appointment = Appointment.new(barber_id: @barber.id)
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.barber = @barber
    @appointment.user = current_user
    @appointment.save!
    redirect_to appointments_path
  end

  def show
  end

  def update

  end

  def destroy
    @appointment.destroy
    redirect_to appointments_path
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end

  def find_user
    @user = User.find(params[:user_id])
  end

  def appointment_params
    params.require(:appointment).permit(:datetime).merge(user_id: current_user.id)
  end
end
