class DropVolunteerMailerTable < ActiveRecord::Migration
  def change
    drop_table :mailer_volunteers
  end
end
