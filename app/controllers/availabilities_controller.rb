require 'date'
require 'time'


class AvailabilitiesController < ApplicationController
  before_action :find_barber, only: [:create]

  def create
    @availability = Availability.new
    @availability.start = params[:availability][:start]
    @availability.end = params[:availability][:end]
    @availability.barber = @barber
    @availability.save!
    redirect_to barber_appointments_path(@barber)
  end

  def index
    availablities = Availability.all
    @available_slots = []
    availablities.each do |element|
      if element.end - 40.minutes >= DateTime.now
    @available_slots << element
      end
    end
   @available_slots
  end


  private

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end
end

