class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.string :user
      t.string :barber

      t.timestamps
    end
  end
end
