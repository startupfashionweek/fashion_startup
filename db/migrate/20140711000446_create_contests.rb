class CreateContests < ActiveRecord::Migration
  def change
    create_table :contests do |t|
      t.text :contest_code
      t.timestamps
    end
  end
end
