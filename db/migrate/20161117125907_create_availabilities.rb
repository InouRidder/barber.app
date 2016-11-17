class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.datetime :start
      t.datetime :end
      t.references :barber, foreign_key: true

      t.timestamps
    end
  end
end
