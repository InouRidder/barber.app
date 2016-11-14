class RemoveUserAndBarberStringsFromAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :user, :barber
  end
end
