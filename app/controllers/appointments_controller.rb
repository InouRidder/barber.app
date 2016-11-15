class AppointmentsController < ApplicationController
  before_action :find_appointment, only: [:show, :edit, :update, :destroy]
  before_action :find_barber, :find_user, only: [:show, :new, :destroy, :edit, :create, :update, :index]

  def index
    @appointments = Appointment.all
    @appointments_by_date = @appointments.group_by(&:date).map { |k, v| [k.to_date, v] }.to_h
    @user = current_user
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def show
  end

  def new
    @appointment = Appointment.new
    @services = @barber.services.split(',')
  end

  def create
    @appointment = Appointment.new(params_appointment)
    @appointment.barber = @barber
    @appointment.user = current_user
    if @appointment.save != true
      flash[:notice] = "Please fill out the form properly"
      redirect_to new_barber_appointment_path(@barber)
    else
      if current_user.barber
        redirect_to barber_appointments_path(@barber, @appointment)
      else
        redirect_to barber_appointment_path(@barber, @appointment)
      end
    end
  end

  def edit
  end

  def update
    @appointment.barber = @barber
    @appointment.user = @user
    @appointment.update(params_appointment)
    if current_user.barber
      redirect_to barber_appointments_path(@barber, @appointment)
    else
      redirect_to barber_appointment_path(@barber, @appointment)
    end
  end

  def destroy
    @appointment.destroy
    if current_user.barber == @barber
      redirect_to barber_appointments_path(@barber)
     else
      redirect_to root_path
    end
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end

  def find_user
    @user = current_user
  end

  def params_appointment
    params.require(:appointment).permit(:date, :service, :drink).merge(user_id: current_user.id)
  end
end
