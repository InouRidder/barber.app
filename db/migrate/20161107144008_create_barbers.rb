class CreateBarbers < ActiveRecord::Migration[5.0]
  def change
    create_table :barbers do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :services

      t.timestamps
    end
  end
end
