class CreateSponsorSpotlights < ActiveRecord::Migration
  def change
    create_table :sponsor_spotlights do |t|
      t.integer "sponsor_id"
      t.timestamps
    end
  end
end
