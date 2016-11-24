class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  include ::MetaTagsHelper

  def home
    @user = current_user
    @barbers = Barber.where.not(latitude: nil, longitude: nil)
    @coordinates = Gmaps4rails.build_markers(@barbers) do |barber, marker|
      marker.lat barber.latitude
      marker.lng barber.longitude
      marker.infowindow render_to_string(partial: "/barbers/map_box", locals: { barber: barber })
    end
  end

end
