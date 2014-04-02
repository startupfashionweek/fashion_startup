class Volunteer < ActiveRecord::Base
  validates_presence_of :position
end
