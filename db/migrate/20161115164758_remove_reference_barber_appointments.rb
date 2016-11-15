class RemoveReferenceBarberAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_reference :appointments, :barber, index: true
  end
end
