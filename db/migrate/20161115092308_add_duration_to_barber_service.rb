class AddDurationToBarberService < ActiveRecord::Migration[5.0]
  def change
    add_column :barber_services, :duration, :integer
  end
end
