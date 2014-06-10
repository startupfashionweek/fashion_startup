class AddCoverImageToInterestedStartups < ActiveRecord::Migration
  def change
    add_column :interested_startups, :cover_image, :string
  end
end
