class InterestedStartup < ActiveRecord::Base
  validates_presence_of :name, :contactname, :email
  validates_uniqueness_of :name
end
