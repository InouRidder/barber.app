class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.all
    if @appointments.length == 0
      flash[:alert] = "You have no appointments. Create one now to get started."
    end
  end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.create(appointment_params)
    if @appointment.nil?
      flash[:alert] = "This time slot is taken, please select a different one"
    else
      redirect_to appointments_path
    end
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

  def appointment_params
    params.require(:appointment).permit(:start, :end).merge(user_id: current_user.id)
  end
end
