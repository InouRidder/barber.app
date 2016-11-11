class AddDrinksToBarber < ActiveRecord::Migration[5.0]
  def change
    add_column :barbers, :drinks, :string
  end
end
