class AddServiceToAppointment < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :service, :string
  end
end
