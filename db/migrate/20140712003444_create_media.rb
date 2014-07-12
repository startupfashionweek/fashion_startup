class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :select_one
      t.text :content
      t.string :pdf_files
      t.timestamps
    end
  end
end
