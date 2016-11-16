class AddNameToBarberService < ActiveRecord::Migration[5.0]
  def change
    add_column :barber_services, :name, :string
  end
end
