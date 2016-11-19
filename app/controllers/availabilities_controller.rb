require 'date'
require 'time'
require 'open-uri'
require 'json'


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
    @availabilities = Availability.all
    # Availability.where()  << don't use ruby to select data, but an AR query like this
    @lat = params[:lat]
    @lng = params[:lng]
    @barbers = Availability.select(:barber_id).distinct

   #  @coordinates = Gmaps4rails.build_markers(@barbers) do |barber, marker|
   #   marker.lat barber.latitude
   #   marker.lng barber.longitude
   #   marker.infowindow render_to_string(partial: "/barbers/map_box", locals: { barber: barber })
   # end
 end

  # def available
  #   availabilities = Availability.all
  #   available_slots = []
  #   availabilities.each do |element|
  #     # if element.end - 40.minutes >= DateTime.now
  #   available_slots << element
  #     # end
  #   end
  #   return available_slots
  # end

  private

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end
end

