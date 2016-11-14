class CreateBarberServices < ActiveRecord::Migration[5.0]
  def change
    create_table :barber_services do |t|
      t.references :service
      t.references :barber

      t.timestamps
    end
  end
end
