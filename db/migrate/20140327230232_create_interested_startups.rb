class CreateInterestedStartups < ActiveRecord::Migration
  def change
    create_table :interested_startups do |t|

      t.timestamps
    end
  end
end
