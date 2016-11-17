class AvailabilitiesController < ApplicationController
  before_action :find_barber

  def create
    @availability = Availability.new
    @availability.start = params[:availability][:start]
    @availability.end = params[:availability][:end]
    @availability.barber = @barber
    @availability.save!
    redirect_to barber_appointments_path(@barber)
  end

  private

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end
end

