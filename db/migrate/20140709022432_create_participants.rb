class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :title
      t.string :name
      t.string :headshot
      t.string :linkedin
      t.string :twitter
      t.timestamps
    end
  end
end
