class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.text :role
      t.string :picture
      t.string :linkedin_link
      t.string :facebook_link
      t.string :twitter_link
      t.timestamps
    end
  end
end
