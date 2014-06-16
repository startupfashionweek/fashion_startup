class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :startups, :socialmedia_links, :facebook_link
    rename_column :startups, :short_description, :advice
    rename_column :startups, :description, :elevator_pitch
    rename_column :interested_startups, :headshot, :website
    rename_column :interested_startups, :question1, :app_link
    rename_column :interested_startups, :question2, :facebook_link
    rename_column :interested_startups, :question3, :twitter_link
    rename_column :interested_startups, :question4, :advice
    rename_column :interested_startups, :question5, :elevator_pitch
    rename_column :interested_startups, :question6, :success
    rename_column :interested_startups, :question7, :challenge
  end
end
