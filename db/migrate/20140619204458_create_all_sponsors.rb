class CreateAllSponsors < ActiveRecord::Migration
  def change
    create_table :all_sponsors do |t|
      t.string :platinum
      t.string :gold
      t.string :silver
      t.string :bronze
      t.string :partners
      t.timestamps
    end
  end
end
