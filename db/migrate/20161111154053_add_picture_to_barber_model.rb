class AddPictureToBarberModel < ActiveRecord::Migration[5.0]
  def change
    add_column :barbers, :picture, :string
  end
end
