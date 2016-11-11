class RemoveForeignKeyFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :users, :barbers
  end
end
