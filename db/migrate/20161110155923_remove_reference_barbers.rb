class RemoveReferenceBarbers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :users, :barber
  end
end
