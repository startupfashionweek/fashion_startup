class AddColumnToSponsors < ActiveRecord::Migration
  def change
    add_column :sponsors, :cover_image, :string
    add_column :sponsors, :logo, :string
    add_column :sponsors, :facebook_link, :string
    add_column :sponsors, :twitter_link, :string
    add_column :sponsors, :address, :string
    add_column :sponsors, :affiliation, :text
    add_column :sponsors, :phone_number, :string
    add_column :sponsors, :email, :string
  end
end
