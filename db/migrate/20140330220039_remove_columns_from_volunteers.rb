class RemoveColumnsFromVolunteers < ActiveRecord::Migration
  def change
    remove_column :volunteers, :name, :string
    remove_column :volunteers, :email, :string
    remove_column :volunteers, :linkedin, :string
    remove_column :volunteers, :phone_number, :string
    remove_column :volunteers, :reason, :text
  end
end
