class AddBarberServiceReferenceToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :barber_service
  end
end
