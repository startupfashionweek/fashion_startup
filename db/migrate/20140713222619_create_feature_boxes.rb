class CreateFeatureBoxes < ActiveRecord::Migration
  def change
    create_table :feature_boxes do |t|
      t.string :name
      t.string :feature_photo
      t.string :feature_content

      t.timestamps
    end
  end
end
