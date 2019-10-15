class RemoveNameFromAppointments < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :name, :string
  end
end
