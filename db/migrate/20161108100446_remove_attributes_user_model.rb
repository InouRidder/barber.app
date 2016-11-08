class RemoveAttributesUserModel < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :name
    remove_column :users, :email
  end
end
