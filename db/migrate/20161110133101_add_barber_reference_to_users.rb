class AddBarberReferenceToUsers < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :barber, foreign_key: true
  end
end

