class AddAppointmentReferenceToBarberService < ActiveRecord::Migration[5.0]
  def change
    add_reference :barber_services, :appointment
  end
end
