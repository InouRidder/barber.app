class RemoveBarberStringsFromAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :barber
  end
end
