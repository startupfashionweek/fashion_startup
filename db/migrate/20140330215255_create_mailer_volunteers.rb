class CreateMailerVolunteers < ActiveRecord::Migration
  def change
    create_table :mailer_volunteers do |t|
      t.string :name
      t.string :email
      t.string :position
      t.string :linkedin
      t.string :phone_number
      t.text :reason

      t.timestamps
    end
  end
end
