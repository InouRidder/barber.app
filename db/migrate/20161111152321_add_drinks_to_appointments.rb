class AddDrinksToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :drink, :string
  end
end
