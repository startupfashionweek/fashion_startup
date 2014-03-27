class CreateInterestedStartups < ActiveRecord::Migration
  def change
    create_table :interested_startups do |t|
      t.string :name
      t.string :contactname
      t.string :email
      t.string :logo
      t.string :headshot
      t.text :question1
      t.text :question2
      t.text :question3
      t.text :question4
      t.text :question5
      t.text :question6
      t.text :question7
      t.timestamps
    end
  end
end
