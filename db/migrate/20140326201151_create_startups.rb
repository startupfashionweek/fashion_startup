class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :socialmedia_links
      t.text :short_description
      t.text :description
      t.string :logo
      t.timestamps
    end
  end
end
