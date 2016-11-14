class RemoveBarberKeyFromAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :appointments, :barbers
  end
end


