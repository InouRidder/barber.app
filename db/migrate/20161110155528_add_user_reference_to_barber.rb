class AddUserReferenceToBarber < ActiveRecord::Migration[5.0]
  def change
    add_reference :barbers, :user
  end
end
