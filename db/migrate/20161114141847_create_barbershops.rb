class CreateBarbershops < ActiveRecord::Migration[5.0]
  def change
    create_table :barbershops do |t|
      t.string :name
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
