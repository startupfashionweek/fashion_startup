class EventSpotlight < ActiveRecord::Base
  validates_presence_of :eventbrite_code
end
