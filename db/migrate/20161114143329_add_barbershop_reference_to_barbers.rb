class AddBarbershopReferenceToBarbers < ActiveRecord::Migration[5.0]
  def change
    add_reference :barbers, :barbershop, foreign_key: true
  end
end
