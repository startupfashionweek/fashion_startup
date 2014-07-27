class AddImageColumnToMedia < ActiveRecord::Migration
  def change
  	add_column :media, :url, :string
  	add_column :media, :cover_image, :string
  end
end
