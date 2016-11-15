class AddPriceToBarberService < ActiveRecord::Migration[5.0]
  def change
    add_column :barber_services, :price, :float
  end
end
