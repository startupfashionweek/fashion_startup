class CreateSpotlights < ActiveRecord::Migration
  def change
    create_table :spotlights do |t|
      t.integer :startup_id
      t.timestamps
    end
  end
end
