require 'date'
require 'time'
require 'open-uri'
require 'json'


class AvailabilitiesController < ApplicationController
  before_action :find_barber, only: [:create]
  before_action :get_distance, only: [:index]

  def create
    @availability = Availability.new
    @availability.start = params[:availability][:start]
    @availability.end = params[:availability][:end]
    @availability.barber = @barber
    @availability.save!
    redirect_to barber_appointments_path(@barber)
  end

  def index
    # Availability.where()  << don't use ruby to select data, but an AR query like this
    @lat = params[:lat]
    @lng = params[:lng]
    @available_barbers_by_distance = Barber.includes(:availabilities).where.not(availabilities: {id: nil}).near([@lat, @lng], @distance).order("distance")
    @barbers = Availability.select(:barber_id).distinct

    @coordinates = Gmaps4rails.build_markers(@barbers) do |available, marker|
     marker.lat available.barber.latitude
     marker.lng available.barber.longitude
     marker.infowindow render_to_string(partial: "/barbers/map_box", locals: { barber: available.barber })
   end
 end

  #   availabilities.each do |element|
  #     # if element.end - 40.minutes >= DateTime.now

  private

  def find_barber
    @barber = Barber.find(params[:barber_id])
  end

  def get_distance
    @distance = params[:distance].to_i
  end
end

