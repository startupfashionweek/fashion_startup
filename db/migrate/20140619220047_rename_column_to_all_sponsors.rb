class RenameColumnToAllSponsors < ActiveRecord::Migration
  def change
    rename_column :all_sponsors, :logo, :sponsor_logo
  end
end
