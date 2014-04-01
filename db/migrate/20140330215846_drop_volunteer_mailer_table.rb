class DropVolunteerMailerTable < ActiveRecord::Migration
  def change
    drop_table :volunteer_mailers
  end
end
