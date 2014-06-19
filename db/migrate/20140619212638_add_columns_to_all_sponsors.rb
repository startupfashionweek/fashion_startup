class AddColumnsToAllSponsors < ActiveRecord::Migration
  def change
    add_column :all_sponsors, :name, :string
    add_column :all_sponsors, :logo, :string
    add_column :all_sponsors, :website, :string
    add_column :all_sponsors, :level, :string

    remove_column :all_sponsors, :platinum
    remove_column :all_sponsors, :gold
    remove_column :all_sponsors, :silver
    remove_column :all_sponsors, :bronze
    remove_column :all_sponsors, :partners
  end
end
