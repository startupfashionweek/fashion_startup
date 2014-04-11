class CreateSponsorSpotlights < ActiveRecord::Migration
  def change
    create_table :sponsor_spotlights do |t|

      t.timestamps
    end
  end
end
