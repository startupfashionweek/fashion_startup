class AddColumnToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :cover_image, :string
    add_column :startups, :twitter_link, :string
    add_column :startups, :app_link, :string
    add_column :startups, :challenge, :text
    add_column :startups, :website, :string
  end
end
