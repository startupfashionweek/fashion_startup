class CreateEventSpotlights < ActiveRecord::Migration
  def change
    create_table :event_spotlights do |t|
      t.text :eventbrite_code
      t.timestamps
    end
  end
end
