class CreateFpCodeboxes < ActiveRecord::Migration
  def change
    create_table :fp_codeboxes do |t|
      t.text :codebox
      t.timestamps
    end
  end
end
