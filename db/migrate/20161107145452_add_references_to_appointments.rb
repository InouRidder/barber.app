class AddReferencesToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :user, foreign_key: true
    add_reference :appointments, :barber, foreign_key: true
  end
end
