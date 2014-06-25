class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.date :date
      t.string :time
      t.string :event_name
      t.text :description
      t.string :link
      t.timestamps
    end
  end
end
