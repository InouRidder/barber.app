class RemoveServicesFromBarber < ActiveRecord::Migration[5.0]
  def change
    remove_column :barbers, :services
  end
end
